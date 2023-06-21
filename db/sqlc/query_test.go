package superdb

import (
	"context"
	"testing"

	"github.com/stretchr/testify/require"
)

func TestCreateTeam(t *testing.T) {
	arg := TeamParams{
		Name:   "JasperClub2",
		Ground: "Draw",
	}

	teams, err := testQueries.Team(context.Background(), arg)

	require.NoError(t, err)
	require.NotEmpty(t, teams)

	require.Equal(t, arg.Name, teams.Name)
	require.Equal(t, arg.Ground, teams.Ground)

	require.NotZero(t, teams.TeamID)
	require.NotZero(t, teams.CreatedAt)

}
