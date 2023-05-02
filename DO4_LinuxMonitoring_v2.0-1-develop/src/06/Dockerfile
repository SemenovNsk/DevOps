FROM nginx:latest


COPY . .
# Устанавливаем права на выполнение скриптов
# EXPOSE 7890
RUN apt update && apt install goaccess -y

RUN chmod +x ./*.sh

# CMD ["bash", "nginx_combined_log_gen.sh"]




