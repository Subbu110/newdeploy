import json
from flask import Flask, request, jsonify, abort

app = Flask(__name__)

globalName = ""

@app.route("/")
def index():
    return jsonify({"status":"success"})

@app.route("/name/<name>", methods=["POST"])
def saveName(name):
    global globalName 
    globalName = name
    return jsonify({"name": name, "method":"POST"})

@app.route("/name", methods=["GET"])
def getName():
    return jsonify({"name": globalName, "method":"GET"})

app.run(host='0.0.0.0', port=5100)
