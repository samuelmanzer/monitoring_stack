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
	docker-compose -f graphite/docker-compose.yml down

sentry-down:
	docker-compose -f sentry/docker-compose.yml down
