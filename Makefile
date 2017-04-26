.PHONY: up down
.PHONY: graphite-up graphite-down
.PHONY: grafana-up grafana-down
.PHONY: sentry-up sentry-down

up: graphite-up grafana-up 
down: grafana-down graphite-down 

# Graphite
graphite-up:
	docker-compose -f graphite/docker-compose.yml up -d

graphite-down:
	docker-compose -f graphite/docker-compose.yml down

# Grafana
grafana-up:
	docker-compose -f grafana/docker-compose.yml up -d

grafana-down:
	docker-compose -f grafana/docker-compose.yml down

# Sentry
sentry-up:
	./sentry/up.sh

sentry-down:
	docker-compose -f sentry/docker-compose.yml down
