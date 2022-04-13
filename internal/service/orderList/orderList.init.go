package orderList

import (
	"context"
	orderlist "template/internal/entity/orderList"
)

type Data interface {
	GetROHeader(ctx context.Context) ([]orderlist.Orders, error)
}

type Service struct {
	data Data
}

func New(data Data) Service {
	return Service{
		data: data,
	}
}