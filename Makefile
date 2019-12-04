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

test: .image
	docker run $(IMG):latest --entrypoint "java -jar /app/helloworld.jar"
