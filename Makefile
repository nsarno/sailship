
.PHONY: build
build:
	docker-compose build

.PHONY: run
run:
	docker-compose up

.PHONY: test
test:
	docker-compose run --rm -e MIX_ENV=test api \
		bash -c "mix test 1>&1"

.PHONY: db-create db-create-test db-create-dev
db-create: db-create-test db-create-dev

db-create-test:
	docker-compose run -e MIX_ENV=test api \
		bash -c "mix ecto.create 1>&1"

db-create-dev:
	docker-compose run -e MIX_ENV=dev api \
		bash -c "mix ecto.create 1>&1"
