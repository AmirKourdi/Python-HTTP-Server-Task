# Pyhon-HTTP-Server
Simple Web Server written in 'Python'
Displays



#To Build
docker build -t python-http-task-akourdi .
To Run
docker run -d -p 80:80 -e WELCOME_MSG="Hello World" python-http-task-akourdi
To Test
curl http://$(docker-machine ip default):80
Result is

  
*** Python - Hello World ! ***
WELCOME_MSG : Hello World
IP is : 192.168.1.5
  

#Image loaded here
https://hub.docker.com/r/85575/python-http-task-akourdi
