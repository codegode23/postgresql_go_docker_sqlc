// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.18.0
// source: query.sql

package superdb

import (
	"context"
	"database/sql"
)

const team = `-- name: Team :one
INSERT INTO teams (
  name,
  ground
) VALUES (
  $1, $2
) RETURNING team_id, name, ground, created_at
`

type TeamParams struct {
	Name   sql.NullString `json:"name"`
	Ground sql.NullString `json:"ground"`
}

func (q *Queries) Team(ctx context.Context, arg TeamParams) (Team, error) {
	row := q.db.QueryRowContext(ctx, team, arg.Name, arg.Ground)
	var i Team
	err := row.Scan(
		&i.TeamID,
		&i.Name,
		&i.Ground,
		&i.CreatedAt,
	)
	return i, err
}
