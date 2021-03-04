COMPOSE_FILE:=docker-compose.yaml

# Start the dev environment
up:
	docker-compose up

_build_react:
	docker-compose -f ${COMPOSE_FILE} run dashboard npm "run build"