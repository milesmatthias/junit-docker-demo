SHA:=$(shell git describe --long --dirty --always --tags)
IMG:=milesmatthias/junit-docker-demo

.PHONY: clean image release test

clean:
	gradle clean

image:
	docker build -t $(IMG):latest -t $(IMG):$(SHA) .

release: .image
  docker push $(IMG):latest
  docker push $(IMG):$(SHA)

test:
	docker build -f Dockerfile_test .
