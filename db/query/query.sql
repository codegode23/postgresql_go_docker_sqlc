-- name: CreatePlayers :one
INSERT INTO teams (
  name,
  ground
) VALUES (
  $1, $2
) RETURNING *;
