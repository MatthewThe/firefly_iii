all:
	docker-compose up -d

backup:
	docker run --rm -v "firefly_iii_firefly_iii_db:/tmp" -v "/home/matthewt/backups/firefly:/backup" ubuntu tar -czvf /backup/firefly_db.tar /tmp
