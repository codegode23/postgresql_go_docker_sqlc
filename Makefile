
docker.postgres: |
			docker run \
			--name jasperDB \
			-e POSTGRES_USER=root \
			-e POSTGRES_PASSWORD=jasper123 \
			-p 5432:5432 \
			-d postgres \
			-c listen_addresses=0.0.0.0


docker.auth.core: |
			docker run \
			--name superJasperAuthCore \
			-p 3567:3567 -d registry.supertokens.io/supertokens/supertokens-postgresql:5.0




.PHONY: docker.postgres docker.auth.core