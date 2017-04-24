.PHONY: up down
.PHONY: graphite-up graphite-down
.PHONY: sentry-up sentry-down

up: graphite-up sentry-up
down: graphite-down sentry-down

graphite-up:
	docker-compose -f ./graphite/docker-compose.yml up -d
sentry-up:
	./sentry/up.sh

down: graphite-down sentry-down

graphite-down:
	docker-compose down -f graphite/docker-compose.yml

sentry-down:
	docker-compose down -f sentry/docker-compose.yml
