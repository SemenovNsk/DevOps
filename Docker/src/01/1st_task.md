# Руководство по работе с Docker и контейнером Nginx

Добро пожаловать! В этом руководстве вы узнаете, как использовать Docker для работы с официальным образом Nginx, включая загрузку образа, запуск контейнера, проверку его состояния, а также настройку портов и перезапуск контейнера. Давайте начнем!

## Шаг 1: Загрузка Docker-образа Nginx

Для начала, загрузим официальный Docker-образ Nginx с помощью команды `docker pull`:

`docker pull nginx`  

![Step 1: Pull Docker Image](./images/image1.png "Step 1: Pull Docker Image")  


## Шаг 2: Проверка образов Docker  

Затем вы можете проверить список доступных образов Docker на вашем локальном компьютере с помощью команды docker images:  
`docker images`  

![Step 2: Check Docker Images](./images/image2.png "Step 2: Check Docker Images")  


##  Шаг 3: Запуск контейнера Nginx  

Теперь давайте запустим контейнер Nginx из загруженного образа с использованием команды docker run, и укажем пользовательское имя контейнера с помощью флага --name:  

`docker run -d --name my-nginx nginx`  

![Step 3: Run Docker Image](./images/image3.png "Step 3: Run Docker Image")

##  Шаг 4: Проверка статуса контейнера  

Чтобы проверить статус работающих контейнеров, вы можете использовать команду docker ps:  

![Step 4: Check Running Container](./images/image4.png "Step 4: Check Running Container")  

##  Шаг 5: Просмотр информации о контейнере  

Если вам нужно просмотреть подробную информацию о конкретном контейнере, вы можете использовать команду docker inspect, указав ID или имя контейнера:  

`docker inspect my-nginx`  

![Step 5: View Container Information](./images/image5.png "Step 5: View Container Information")  
![Step 5: View Container Information](./images/image5.1.png "Step 5: View Container Information")  


##  Шаг 6: Остановка контейнера  

Чтобы остановить работающий контейнер, вы можете использовать команду docker stop, указав ID или имя контейнера:  

`docker stop my-nginx`  

![Step 6: Stop Docker Container](./images/image6.png "Step 6: Stop Docker Container")  


## Шаг 7: Проверка статуса контейнера  

`docker ps`    
![Step 7: Check Stopped Container](./images/image7.png "Step 7: Check Stopped Container")  


## Шаг 8: Запуск Docker-образа Nginx с настройкой портов  

Теперь давайте запустим контейнер Docker с портами 80 и 443, отображенными на те же порты на локальной машине с помощью команды docker run:  

`docker run -d --name my-nginx -p 80:80 -p 443:443 nginx`    
![Step 8: Run Docker with Mapped Ports](./images/image8.png "Step 8: Run Docker with Mapped Ports")  


## Шаг 9: Проверка доступности страницы Nginx  

Теперь вы можете проверить доступность страницы Nginx в браузере, открыв localhost:80 в вашем веб-браузере.    
![Step 9: Verify Nginx Start Page](./images/image9.png "Step 9: Verify Nginx Start Page")  


## Шаг 10: Перезапуск контейнера  

Если вам нужно перезапустить контейнер Nginx, вы можете использовать команду docker restart, указав ID или имя контейнера:  

`docker restart my-nginx`  
![Step 10: Restart Docker Container](./images/image10.png "Step 10: Restart Docker Container")  


## Шаг 11: Проверка состояния контейнера  

тобы убедиться, что контейнер успешно перезапущен, вы можете проверить его состояние с помощью любого доступного метода, например командой docker ps или проверкой доступности страницы Nginx в браузере.