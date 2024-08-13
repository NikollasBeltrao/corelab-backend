CONTAINER_NAME = laravel_app
APP_NAME = laravel_app

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

migrate:
	docker-compose exec $(CONTAINER_NAME) php artisan migrate

seed:
	docker-compose exec $(CONTAINER_NAME) php artisan db:seed

test:
	docker-compose exec $(CONTAINER_NAME) php artisan test

restart: down up

logs:
	docker-compose logs -f

artisan:
	docker-compose exec $(CONTAINER_NAME) php artisan $(command)