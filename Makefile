.PHONY: build run

build:
	cd myapp && sudo docker build -t invalid/myapp .
	cd nginx && sudo docker build -t invalid/nginx .

run:
	./run.sh

