run: 
	go run cmd/*.go

instal_sqlc :
	go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest

install_goose :
	go install github.com/pressly/goose/v3/cmd/goose@latest


goose_up:
	cd sql/schema && goose postgres postgres://demo:demo@localhost:5432/demo up

goose_down:
	cd sql/schema && goose postgres postgres://demo:demo@localhost:5432/demo down

sqlc:
	sqlc generate

docker:
	docker compose up -d