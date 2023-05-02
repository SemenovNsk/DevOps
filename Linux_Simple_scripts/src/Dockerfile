FROM ubuntu:20.04



RUN apt-get update && apt-get install -y systemd iproute2

WORKDIR /app

COPY . .

RUN chmod 777 */*.sh

# CMD [ "ubuntu", "main.sh" ]
