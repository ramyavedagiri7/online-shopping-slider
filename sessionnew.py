#!/usr/bin/env python

from bottle import route, view
import bottle, bottlesession
import pymongo
import topicDAO


####################
#session_manager = bottlesession.PickleSession()
session_manager = bottlesession.CookieSession()
valid_user = bottlesession.authenticator(session_manager)

@bottle.route('/static/<path:path>')
def static_files(path):
	return bottle.static_file(path,root='static')

@bottle.route('/')
def topic_index():
	return bottle.template('index')

@bottle.route('/signup', method='POST')
@valid_user()
def insert_newuser():
	fname=bottle.request.forms.get("fname")
	print fname
	lname=bottle.request.forms.get("lname")
	print lname
	email=bottle.request.forms.get("email")
	print email
	password=bottle.request.forms.get("password")
	print password
	user_list.insert_user(fname,lname,email,password)
	bottle.redirect('/')

@bottle.route('/login',method='GET')
def login():
	return bottle.template('login-form')

@bottle.route('/login',method='POST')
@valid_user()
def login():
	passwds = { 'guest@guest.com' : 'guest', 'ramya123@yahoo.com':'ramya'}
	username = bottle.request.forms.get('emailid')
	password = bottle.request.forms.get('password')

	if not username or not password:
		return { 'error' : 'Please specify username and password' }

	session = session_manager.get_session()
   	session['valid'] = False

	print passwds.get(username)

	if check_login(username, password):
		response.set_cookie("account", username, secret='some-secret-key')
		return template("<p>Welcome {{name}}! You are now logged in.</p>", name=username)
	else:
		return "<p>Login failed.</p>"


   	if password and passwds.get(username) == password:
      		session['valid'] = True
      		session['name'] = username
      		session_manager.save(session)
		return "<p>Your login information was correct.</p>"


   	if not session['valid']:
      		return { 'error' : 'Username or password is invalid' }


#    if check_login(username, password):
#        return "<p>Your login information was correct.</p>"
#    else:
#       return "<p>Login failed.</p>"

def check_login(username, password):
	return true

@bottle.route('/logout')
def logout():
   session = session_manager.get_session()
   session['valid'] = False
   session_manager.save(session)
   bottle.redirect('/login')

connection_string = "mongodb://localhost"	
connection = pymongo.MongoClient(connection_string)
database = connection.Lab1282
user_list = topicDAO.TopicDAO(database)

bottle.debug(True)
bottle.run(host='localhost',port=3000)

##################
#app = bottle.app()
#if __name__ == '__main__':
#	bottle.debug(True)
#	bottle.run(app = app)