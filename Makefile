include .env
export

run:
	docker-compose up -d mongo mongo-express
	docker-compose build build-vue
	docker-compose run build-vue
	docker-compose up -d express-node 

down:
	docker-compose down