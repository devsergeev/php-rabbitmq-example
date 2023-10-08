up:
	docker-compose -f ./docker/docker-compose.yml --env-file ./docker/.env up -d

bash:
	docker-compose -f ./docker/docker-compose.yml --env-file ./docker/.env run --rm php-cli bash

send:
	docker-compose -f ./docker/docker-compose.yml --env-file ./docker/.env run --rm php-cli php src/send.php

receive:
	docker-compose -f ./docker/docker-compose.yml --env-file ./docker/.env run --rm php-cli php src/receive.php