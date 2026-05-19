from flask import Flask
import os

app = Flask(__name__)

# Get app name from environment variable, default to 'Hello Docker World'
APP_NAME = os.getenv("APP_NAME","Hello Docker World")

@app.route("/")
def home():
    return APP_NAME

if __name__ == "__main__":
    # Run the app on all interfaces, port 5000
    app.run(host="0.0.0.0", port=5000)