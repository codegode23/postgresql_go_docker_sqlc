-- name: Team :one
INSERT INTO teams (
  name,
  ground
) VALUES (
  $1, $2
) RETURNING *;
