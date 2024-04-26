from flask import Flask
import socket

app = Flask(__name__)

@app.route('/')
def hello_world():
    host_name = socket.gethostname()
    return f'Hello, World from Flask! Running on container: {host_name}'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)