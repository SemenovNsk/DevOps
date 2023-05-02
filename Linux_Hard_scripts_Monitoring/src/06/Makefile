all: create

create:
	docker build -t main . 
	docker run --rm -it -p 7890:7890 -v $(shell pwd)/html:/html main bash
