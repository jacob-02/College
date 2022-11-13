import socket
import threading

nickname = input("Choose your nickname: ")

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(('192.168.202.94',55555))

def receive():
    while True:
        try:
            message = client.recv(1024).decode('ascii') #Receive message from the server
            if message == 'NICK':
                client.send(nickname.encode('ascii')) #Send nickname to the server
            else:
                print(message)   
        except:
            print("An error occured!")
            client.close()
            break

def write():
    while True:
        message = f'{nickname}: {input("")}'  # Define message to be sent to the server
        client.send(message.encode('ascii')) #Send message to the server

receive_thread = threading.Thread(target=receive)   #Create a thread for receiving messages
receive_thread.start()

write_thread = threading.Thread(target=write)   #Create a thread for sending messages
write_thread.start()
