package utils

import (
	"math/rand"
	"strings"
	"time"

	"github.com/go-faker/faker/v4"
)

func init() {
	rand.Seed(time.Now().UnixNano())
}

func RandomInt(min, max int64) int64 {
	return min + rand.Int63n(max-min+1)
}

const alphabet = "abcdefghijklmnopqrstuvwxyz"

func RandomString(n int) string {
	var sb strings.Builder
	k := len(alphabet)

	for i := 0; i < n; i++ {
		c := alphabet[rand.Intn(k)]
		sb.WriteByte(c)
	}

	return sb.String()
}

func RandomDate() string {
	return faker.Date()
}

func RandomTimestamp() string {
	return faker.Timestamp()
}

func RandomTeamName() string {
	return faker.Name()
}

func RandomGround() string {
	return faker.Name()
}
