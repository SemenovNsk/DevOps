## Prerequisites  

Docker installed on your local machine

# Шаг 1: Прочитайте файл конфигурации nginx.conf в Docker-контейнере

Используйте команду docker exec, чтобы прочитать файл конфигурации nginx.conf внутри Docker-контейнера:

`docker exec my-nginx cat /etc/nginx/nginx.conf`  

![Step 1: Pull Docker Image](./images/image1.png "Step 1: Pull Docker Image")  


## Шаг 2: Создайте файл nginx.conf на локальной машине

Создайте новый файл nginx.conf на вашей локальной машине с желаемой конфигурацией для пути /status, чтобы возвращать страницу статуса сервера nginx. Файл nginx.conf обычно содержит директивы конфигурации, которые определяют, как nginx должен обрабатывать входящие запросы, включая блоки сервера, блоки location и различные настройки, такие как проксирование, кэширование, SSL и т. д.

![Step 2: Check Docker Images](./images/image2.png "Step 2: Check Docker Images")  


##  Шаг 3: Копирование файла nginx.conf в Docker-образ  

Скопируйте созданный файл nginx.conf с вашей локальной машины в Docker-образ с помощью команды docker cp: 

`docker cp ./nginx.conf my-nginx:/etc/nginx/nginx.conf` (Удостоверьтесь, что вы запустили контейнер в этой директории, иначе нужно будет прописывать путь до конф файла)  


![Step 3: Run Docker Image](./images/image3.png "Step 3: Run Docker Image")

##  Шаг 4: Перезапустите nginx внутри Docker-образа  

Перезапустите nginx внутри Docker-образа, чтобы применить новую конфигурацию с помощью команды docker exec:  
`docker exec my-nginx nginx -s reload`  


![Step 4: Check Running Container](./images/image4.png "Step 4: Check Running Container")  

##  Шаг 5: Проверьте страницу статуса сервера nginx  

Откройте localhost:8080/status в вашем веб-браузере, чтобы проверить, доступна ли теперь страница статуса сервера nginx.  


![Step 5: View Container Information](./images/image5.png "Step 5: View Container Information")  


##  Шаг 6: Экспорт контейнера в файл container.tar  

Экспортируйте Docker-контейнер в файл container.tar с помощью команды docker export:  

`docker export my-nginx > container.tar`  

![Step 6: Stop Docker Container](./images/image6.png "Step 6: Stop Docker Container")  


## Шаг 7: Остановите контейнер  
Остановите Docker-контейнер с помощью команды docker stop:  


`docker stop mynginx`    
![Step 7: Check Stopped Container](./images/image7.png "Step 7: Check Stopped Container")  


## Шаг 8: Удалите Docker-образ  

Удалите Docker-образ без удаления контейнера сначала с помощью команды docker rmi:  

`docker rmi [image_id|repository]`  

![Step 8: Run Docker with Mapped Ports](./images/image8.png "Step 8: Run Docker with Mapped Ports")  


## Шаг 9: Удалите остановленный контейнер  

Удалите остановленный Docker-контейнер с помощью команды docker rm:  
`docker rm my-nginx`  
\    
![Step 9: Verify Nginx Start Page](./images/image9.png "Step 9: Verify Nginx Start Page")  


## Шаг 10: Импортируйте контейнер из файла container.tar  

Импортируйте Docker-контейнер обратно из файла container.tar с помощью команды docker import:  

`docker import container.tar my-nginx`  

![Step 10: Restart Docker Container](./images/image10.png "Step 10: Restart Docker Container")  


## Шаг 11: Запустите импортированный контейнер с использованием команды docker run:  

`docker run -d -p 80:80 mynginx nginx`  

Эта команда запускает контейнер с использованием образа my-nginx, который был создан на предыдущем шаге при импорте контейнера из файла container.tar. Опция -d означает, что контейнер будет запущен в фоновом режиме, -p 80:80 указывает на проброс портов, где 80:80 означает, что порт 80 контейнера будет доступен на порту 80 хост-системы.  

![Step 11: Restart Docker Container](./images/image11.png "Step 10: Restart Docker Container")    

## Шаг 12: Проверьте работу контейнера:  

После запуска контейнера вы можете проверить его работу, открыв веб-браузер и перейдя по адресу http://localhost/. Если контейнер с веб-сервером Nginx был успешно импортирован и запущен, то вы должны увидеть стандартную приветственную страницу Nginx в браузере.  
![Step 12: Restart Docker Container](./images/image12.png "Step 10: Restart Docker Container")    
