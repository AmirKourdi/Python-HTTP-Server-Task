#!/usr/bin/python
import subprocess,os
from http.server import BaseHTTPRequestHandler, HTTPServer
import socket
PORT_NUMBER = 80
local_ip = socket. gethostbyname(socket. gethostname())
#This class will handles any incoming request from
#the browser
class myHandler(BaseHTTPRequestHandler):

  #Handler for the GET requests
  def do_GET(self):
    self.send_response(200)
    self.send_header('Content-type','text/html')
    self.end_headers()
    # Send the html message
    self.wfile.write("<h1> Python HTTP Server By akourdi </h1>\n".encode())
    self.wfile.write("\n".encode())
    self.wfile.write(("<p> *** Python - Hello World ! *** </p>").encode())
    self.wfile.write(("<p> WELCOME_MSG : " + os.getenv('WELCOME_MSG </p>', 'undef')).encode())
    self.wfile.write(("<p> Server IP: " + local_ip + "</p>").encode())
    return

try:
  #Create a web server and define the handler to manage the
  #incoming request
  server = HTTPServer(('', PORT_NUMBER), myHandler)
  print ('Started httpserver on port ' , PORT_NUMBER)

  #Wait forever for incoming htto requests
  server.serve_forever()

except KeyboardInterrupt:
  print ('^C received, shutting down the web server')
  server.socket.close()
