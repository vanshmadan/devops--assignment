# app.py
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, World from Flask!"

@app.route('/health')
def health():
    return "I am healthy!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
