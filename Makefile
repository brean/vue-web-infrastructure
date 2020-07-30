include .env
export

run:
	docker-compose up -d mongo mongo-express certbot
	docker-compose build build-vue
	docker-compose run build-vue
	docker-compose up -d nginx

down:
	docker-compose down
