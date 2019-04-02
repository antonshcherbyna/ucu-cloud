#!/usr/bin/env python3
import time
from flask import Flask, request
app = Flask(__name__)

@app.route('/test_cpu/')
def test_cpu():
   number = int(request.args.get('number', ''))
   primes = []
   for i in range(1, number + 1):
       if number % i == 0:
           primes.append(i)
   return str(primes)

@app.route('/test_memory/')
def test_memory():
   number = int(request.args.get('number', ''))
   large_list = [10]*number
   return str(len(large_list))

@app.route("/livetest")
def livetest():
    return "I\'m working!"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
