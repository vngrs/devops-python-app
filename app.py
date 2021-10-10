import os
import flask
import MySQLdb

application = flask.Flask(__name__)
application.debug = True

@application.route('/')
def hello_world():
  return "Hello Devops 123"

if __name__ == "__main__":
  application.run(host='0.0.0.0', port=3000)
