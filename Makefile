
MIGRATIONS_FOLDER = $(PWD)/db/migration
DATABASE_URL = postgresql://root:jasper123@127.0.0.1:5432/supertokensDB?sslmode=disable

docker.postgres: |
			docker run \
			--name jasperDB \
			-e POSTGRES_USER=root \
			-e POSTGRES_PASSWORD=jasper123 \
			-e POSTGRES_DB=supertokensDB \
			-p 5432:5432 \
			-d postgres \
			-c listen_addresses=0.0.0.0


docker.auth.core: |
			docker run \
			--name superJasperAuthCore \
			-e POSTGRESQL_CONNECTION_URI="postgresql://root:jasper123@127.0.0.1:5432/supertokensDB"  \
			-p 3567:3567 -d registry.supertokens.io/supertokens/supertokens-postgresql:5.0

migrate_up: |
		migrate -path $(MIGRATIONS_FOLDER) -database "$(DATABASE_URL)" -verbose up


migrate_down: |
		migrate -path $(MIGRATIONS_FOLDER) -database "$(DATABASE_URL)" -verbose down 

migrate_fix: |
		migrate -path $(MIGRATIONS_FOLDER) -database "$(DATABASE_URL)" force 1



.PHONY: docker.postgres docker.auth.core migrate_up migrate_down migrate_fix