package skeleton

import (
	"context"
	"template/internal/entity/auth"
	"template/pkg/errors"
)

func (s Service) CheckAuth(ctx context.Context, _token, _code string) (auth.Auth, error) {
	auth, err := s.data.CheckAuth(ctx, _token, _code)
	if err != nil {
		return auth, errors.Wrap(err, "[SERVICE][Auth]")
	}
	return auth, nil
}
