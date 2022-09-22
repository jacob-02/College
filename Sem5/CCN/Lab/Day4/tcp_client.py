from http import client
from socket import *

serv_addr = "192.168.35.94"
serv_port = 8000
client_sock = socket(AF_INET, SOCK_STREAM)
client_sock.connect((serv_addr, serv_port))

msg = input("enter the text message:")

client_sock.send(msg.encode())
mod_msg = client_sock.recv(2048)
print("Received from server: ", mod_msg.decode())

client_sock.close()