package orderList

import (
	"context"
	orderlist "template/internal/entity/orderList"
	"template/pkg/errors"
)

func (d Data) GetROHeader(ctx context.Context) ([]orderlist.Orders, error) {
	headers := []orderlist.Orders{}

	d.UpdateConn()

	rows, err := d.stmt[getROHeader].QueryxContext(ctx)
	if err != nil {
		return headers, errors.Wrap(err, "[DATA][GetROHeader1]")
	}

	defer rows.Close()

	for rows.Next() {
		header := orderlist.Orders{}
		if err = rows.StructScan(&header); err != nil {
			return headers, errors.Wrap(err, "[DATA][GetROHeader2]")
		}
		headers = append(headers, header)
	}

	return headers, nil
}
