build:
	@go build -o bin/ecom backend/cmd/server/main.go

test:
	@go test -v ./...

run: build
	@./bin/ecom