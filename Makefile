
build:
	docker-compose build

run:
	docker-compose up

test:
	docker-compose run --rm -e MIX_ENV=test api mix test

create_db:
	docker-compose run -e MIX_ENV=test api mix ecto.create
	docker-compose run -e MIX_ENV=dev api mix ecto.create

.PHONY: build run test
