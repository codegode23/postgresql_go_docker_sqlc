-- name: Team :one
INSERT INTO teams (
  name,
  ground
) VALUES (
  $1, $2
) RETURNING *;


-- name: GetTeam :one
SELECT * FROM teams
WHERE team_id = $1 LIMIT 1;


-- name: ListTeams :many
SELECT * FROM teams
ORDER BY team_id
LIMIT $1
OFFSET $2;


-- name: UpdateTeam :one
UPDATE teams
SET ground = $2
WHERE team_id = $1
RETURNING *;


-- name: DeleteTeams :exec
DELETE FROM teams
WHERE team_id = $1;
