from http import client
from operator import mod
from socket import *

serv_addr = "192.168.35.94"
serv_port = 8000
client_sock = socket(AF_INET, SOCK_DGRAM)

msg = input("enter the text message:")

client_sock.sendto(msg.encode(), (serv_addr, serv_port))
mod_msg, addr = client_sock.recvfrom(2048)
print("Received from server: ", mod_msg.decode())