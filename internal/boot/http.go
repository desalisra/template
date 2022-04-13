package boot

import (
	"log"
	"net/http"
	"template/docs"
	"template/pkg/httpclient"

	"template/internal/config"
	"template/internal/viper"

	"github.com/jmoiron/sqlx"

	server "template/internal/delivery/http"

	authData "template/internal/data/auth"
	authService "template/internal/service/auth"

	skeletonData "template/internal/data/skeleton"
	skeletonHandler "template/internal/delivery/http/skeleton"
	skeletonService "template/internal/service/skeleton"

	orderData "template/internal/data/orderList"
	orderHandler "template/internal/delivery/http/orderList"
	orderService "template/internal/service/orderList"
)

// HTTP will load configuration, do dependency injection and then start the HTTP server
func HTTP() error {
	err := config.Init()
	if err != nil {
		log.Fatalf("[CONFIG1] Failed to initialize config: %v", err)
	}

	errViper := viper.Init()
	if errViper != nil {
		log.Fatalf("[CONFIG2] Failed to initialize config: %v", errViper)
	}

	v := viper.GetConn()
	db := v.ServerRO

	cfg := config.Get()
	// Open MySQL DB Connection
	db, err = sqlx.Open("mysql", cfg.Database.Master)
	if err != nil {
		log.Fatalf("[DB] Failed to initialize database connection: %v", err)
	}

	//
	docs.SwaggerInfo.Host = cfg.Swagger.Host
	docs.SwaggerInfo.Schemes = cfg.Swagger.Schemes

	httpc := httpclient.NewClient()
	ad := authData.New(httpc, cfg.API.Auth)
	as := authService.New(ad)

	// Diganti dengan domain yang anda buat
	sd := skeletonData.New(db)
	ss := skeletonService.New(sd, as)
	sh := skeletonHandler.New(ss)

	od := orderData.New(db)
	os := orderService.New(od)
	oh := orderHandler.New(os)

	s := server.Server{
		Skeleton: sh,
		Orders: oh,
	}

	viper.ViperActive()

	if err := s.Serve(cfg.Server.Port); err != http.ErrServerClosed {
		return err
	}

	return nil
}
