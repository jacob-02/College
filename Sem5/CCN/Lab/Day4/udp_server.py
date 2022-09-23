from socket import *

serv_addr = "192.168.35.145"
serv_port = 8000
serv_sock = socket(AF_INET, SOCK_DGRAM)
serv_sock.bind((serv_addr, serv_port))
print("Server is running on {}:{}".format(serv_addr, serv_port))

while True:
    data, addr = serv_sock.recvfrom(2048)
    print("Received from client: ", addr)
    mod_msg = data.upper()
    serv_sock.sendto(mod_msg, addr)
