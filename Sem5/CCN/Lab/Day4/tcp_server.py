from socket import *

serv_addr = "192.168.35.145"
serv_port = 8000
serv_sock = socket(AF_INET, SOCK_STREAM)
serv_sock.bind((serv_addr, serv_port))


print("Server READYY")

while True:
    serv_sock.listen(1)
    conn_sock, addr = serv_sock.accept()
    print("Received from client: ", addr)
    msg = conn_sock.recv(2048)
    print("Received from client: ", msg.decode())
    mod_msg = input("Enter the your message: ").encode()
    conn_sock.send(mod_msg)
    conn_sock.close()