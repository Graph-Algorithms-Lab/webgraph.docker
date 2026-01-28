
build:
	docker build -t ghcr.io/massimo-nocentini/webgraph.docker:master -f ./Dockerfile .

run:
	docker run -it --rm ghcr.io/massimo-nocentini/webgraph.docker:master