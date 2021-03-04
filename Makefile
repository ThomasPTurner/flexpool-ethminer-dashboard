COMPOSE_FILE:=docker-compose.dev.yaml

# Start the dev environment
up:
	docker-compose -f ${COMPOSE_FILE} up

_build_react:
	docker-compose -f ${COMPOSE_FILE} run dashboard npm "run build"