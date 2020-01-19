all:
	go get ./...
	go fmt ./...
	go install ./cmd/...
	go test -cover ./...


linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go install -ldflags "-s" -installsuffix cgo -v ./cmd/...


docker:
	docker build . -t sidecarinjector
