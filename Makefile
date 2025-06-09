IMAGE_NAME := goose-container

build-container:
	podman build -t $(IMAGE_NAME) -f ./Containerfile .

run:
	podman run --rm -ti $(IMAGE_NAME)

run-shell:
	podman run --rm -ti $(IMAGE_NAME) --login
