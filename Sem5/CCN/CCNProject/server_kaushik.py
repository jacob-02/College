import threading
import socket

host = '127.0.0.1' # localhost
port = 55555

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
server.bind((host, port))
server.listen()

clients = []
nicknames = []

def broadcast(message):       # broadcast message to all clients connected to the server
    for client in clients:  
        client.send(message)

def handle(client):
    while True:
        try:
            message = client.recv(1024)    # receive message from the client at a rate of 1024 bytes
            broadcast(message)       #Try to receive message from the client and broadcast it to all other clients
        except:
            index = clients.index(client)
            clients.remove(client)
            client.close()
            nickname = nicknames[index]                       
            broadcast(f'{nickname} left the chat!'.encode('ascii'))     #Any error in broadcasting message will result in the client being removed from the list
            nicknames.remove(nickname)
            break

def receive():
    while True:
        client, address = server.accept()      #Accept connection
        print(f"Connected with {str(address)}")

        client.send('NICK'.encode('asczzii'))   #Send nickname to the client
        nickname = client.recv(1024).decode('ascii')  #Receive nickname from the client

        nicknames.append(nickname)
        clients.append(client)

        print(f"Nickname of the client is {nickname}!")
        broadcast(f"{nickname} joined the chat!".encode('ascii'))  #Broadcast nickname to all other clients that the client with that nickname has joined the chat
        client.send('Connected to the server!'.encode('ascii'))

        thread = threading.Thread(target=handle, args=(client,))  # Each client will have its own thread
        thread.start()

print("Server is listening...")
receive()