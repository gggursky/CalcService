lint:
	go mod tidy 
	gofumpt -w
	gci write -s standart -s default
	golangci-lit ./...

tools:
	go install github.com/daixiang0/gci@latest
	go install mvdan.cc/gofumpt@latest
build:
	GOOS=windows go build ./bin/app.exe ./cmd/app/main.go
up:
	docker compose up -d
down:
	docker compose down -d
run:
	go run ./cmd/app/main.go