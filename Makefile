export GO111MODULE=on
export GOOS:=$(shell go env GOOS)
export GOARCH:=$(shell go env GOARCH)
export GOVERSION:=1.12
export PROJECT=stats-api

all: build run

run:
	./bin/${PROJECT} --v=5 --logtostderr=true

test:
	go test ./...

build-docker:
	docker run -it -e GOOS=${GOOS} -e GOARCH=${GOARCH} -v $(shell pwd):/${PROJECT} -w /${PROJECT} golang:${GOVERSION} make build run

build:
	go build -mod vendor -o bin/${PROJECT} .

generate: 
	(cd api && go run github.com/99designs/gqlgen)

clean:
	sudo rm bin/${PROJECT}
	