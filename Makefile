docker.auth.core: |
			docker run \
			-p 3567:3567 -d registry.supertokens.io/supertokens/supertokens-postgresql:5.0


docker.postgres: |
			docker run \
			-p 5432:5432 \
			-e POSTGRESQL_USER="root" \
			-e POSTGRESQL_PASSWORD="jasper123" \
			-e POSTGRESQL_HOST="127.0.0.1" \
			-e POSTGRESQL_PORT="5432" \
			-e POSTGRESQL_DATABASE_NAME="supertokensDB" \
			-d registry.supertokens.io/supertokens/supertokens-postgresql

.PHONY: docker.auth.core docker.postgres