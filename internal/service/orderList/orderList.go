package orderList

import (
	"context"
	orderlist "template/internal/entity/orderList"
	"template/pkg/errors"
)

func (s Service) GetRO(ctx context.Context) ([]orderlist.Orders, error) {
	var roheaders []orderlist.Orders

	headers, err := s.data.GetROHeader(ctx)
	if err != nil {
		return headers, errors.Wrap(err, "[SERVICE][GetPOHeader]")
	}

	roheaders = headers
	return roheaders, err
}