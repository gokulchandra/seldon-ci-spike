IMAGE_REPO?=gokul93
IMAGE_NAME?=sklearn-ci
IMAGE_VERSION?=latest
MODEL_NAME?=IrisClassifier

container_image:
	docker build \
	  --build-arg IMAGE_REPO=$(IMAGE_REPO) \
	  --build-arg IMAGE_VERSION=$(IMAGE_VERSION) \
	  --build-arg MODEL_NAME=$(MODEL_NAME) \
	  --tag $(IMAGE_REPO)/$(IMAGE_NAME):$(IMAGE_VERSION) .
