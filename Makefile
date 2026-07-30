bootstrap:
	./scripts/bootstrap.sh

doctor:
	./bin/doctor

deploy:
	./bin/deploy

health:
	./bin/health

logs:
	./bin/logs

backup:
	./bin/backup

restore:
	./bin/restore

ssl:
	./bin/ssl

version:
	./bin/version

up:
	docker compose up -d --build

down:
	docker compose down

build:
	docker compose build

restart:
	docker compose restart

ps:
	docker compose ps

logs:
	docker compose logs -f api