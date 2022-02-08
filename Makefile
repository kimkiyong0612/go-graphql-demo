.PHONY: up
up: 
	docker compose up -d

.PHONY: run
run:
	go build server.go && ./server

.PHONY: sqlboiler
slqboiler: 
	sqlboiler psql
