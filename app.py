from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, World!'

if __name__ == '__main__':
    # Use the PORT environment variable provided by Heroku,
    # or default to 5000 if running locally.
    port = int(os.environ.get("PORT", 5000))
    app.run(host='0.0.0.0', port=port)
