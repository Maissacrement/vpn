NAME:=vpn-client
IMAGE:=maissacrement/${NAME}

build:
	@docker build -t ${IMAGE} .

push: build
	@docker push ${IMAGE}

${IMAGE}: build
	@docker run -it --rm ${IMAGE}