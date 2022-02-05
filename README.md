# Pyhon-HTTP-Server
Simple Web Server written in Python


# To Run:
1. export WELCOME_MSG="Hello World"
2. python3 http-server.py

# To Test:
curl http://localhost:80
*** Python - Hello World ! ***

WELCOME_MSG : Hello World 

IP is : 172.22.34.136


# To Build
docker build -t python-http-task-akourdi .
# To Run
docker run -d -p 80:80 -e WELCOME_MSG="Hello World" python-http-task-akourdi
# To Test
curl http://$(docker-machine ip default):80

# Result
*** Python - Hello World ! ***

WELCOME_MSG : Hello World

IP is : 192.168.1.5
  

# Image loaded here
https://hub.docker.com/r/85575/python-http-task-akourdi
