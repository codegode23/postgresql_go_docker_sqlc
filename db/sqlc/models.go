// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.18.0

package superdb

import (
	"database/sql"
	"time"
)

type Player struct {
	PlayerID  int64        `json:"player_id"`
	Firstname string       `json:"firstname"`
	Lastname  string       `json:"lastname"`
	Birthdate sql.NullTime `json:"birthdate"`
	Email     string       `json:"email"`
	TeamID    int64        `json:"team_id"`
	AddedOn   time.Time    `json:"added_on"`
}

type Team struct {
	TeamID    int64          `json:"team_id"`
	Name      sql.NullString `json:"name"`
	Ground    sql.NullString `json:"ground"`
	CreatedAt time.Time      `json:"created_at"`
}
