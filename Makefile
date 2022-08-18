setup:
	make prepare-env
	docker-compose run --rm app npm ci

start:
	docker-compose up

dev:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

prepare-env:
	cp ./app/.env.example ./.env
