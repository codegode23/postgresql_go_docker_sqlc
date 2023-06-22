package superdb

import (
	"context"
	"testing"

	utils "github.com/codegode23/postgresql_go_docker_sqlc/superutils"
	"github.com/stretchr/testify/require"
)

func TestCreateRandomTeam(t *testing.T) {
	arg := TeamParams{
		TeamID: 1,
		Name:   utils.RandomTeamName(),
		Ground: utils.RandomGround(),
	}

	teams, err := testQueries.Team(context.Background(), arg)

	require.NoError(t, err)
	require.NotEmpty(t, teams)

	require.Equal(t, arg.Name, teams.Name)
	require.Equal(t, arg.Ground, teams.Ground)

	require.NotZero(t, teams.TeamID)
	require.NotZero(t, teams.CreatedAt)

}
