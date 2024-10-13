# start service
up:
	just _check_dot_env
	docker compose up --detach

# pull newest image and start service
update:
	just _check_dot_env
	docker compose up --pull always

# stop service
stop:
	docker compose stop

_check_dot_env:
	test -f .env || echo '.env file not found' || exit 1
