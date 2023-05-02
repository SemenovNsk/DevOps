NAME=script

allow:
	chmod 777 main.sh
docker_build:
	docker build -t $(NAME) .
docker_run:
	docker run --name $(NAME)1 --rm -it $(NAME)
docker_rmi:
	docker rmi $(NAME)