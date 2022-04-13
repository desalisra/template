package orderList

import (
	"context"
	orderlist "template/internal/entity/orderList"
)

type Service interface {
	GetRO(ctx context.Context) ([]orderlist.Orders, error)
}

type (
	Handler struct {
		service Service
	}
)

func New(s Service) *Handler {
	return &Handler{
		service: s,
	}
}
