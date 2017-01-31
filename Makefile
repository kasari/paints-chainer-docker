IMAGE_NAME = "kasari/paints-chainer"

run: build
	docker run -it -p 8000:8000 ${IMAGE_NAME} 

build:
	docker build -t ${IMAGE_NAME} .
