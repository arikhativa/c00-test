
IMG=arikhativa/pool-tester:1.0.0
NAME=pool-tester
CLOUD_IMG=arikhativa/pool-tester:1.0.0
WORKDIR=/home

PROJECT?=-a
PROJECT_PATH?=/home

build:
	docker build -t $(IMG) .

push:
	docker push $(IMG)

run:
	docker run -d -it -v $(HOME):$(WORKDIR)/ --name $(NAME) $(IMG)

stop:
	docker rm -f $(NAME)

re: stop run
	@true

enter:
	docker exec -it $(NAME) bash

test:
	docker exec -it $(NAME) $(WORKDIR)/pool-tester/test.sh $(PROJECT) $(PROJECT_PATH)

review:
	docker exec -it $(NAME) $(WORKDIR)/pool-tester/test.sh $(PROJECT) $(WORKDIR)/code_review

