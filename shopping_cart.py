#!/usr/bin/python

import pymongo
import os
import bottle
import bottlesession
import topicDAO
#from bs4 import BeautifulSoup
from bottle import redirect
from uuid import uuid4
import datetime

session_manager = bottlesession.CookieSession()
valid_user = bottlesession.authenticator(session_manager)

@bottle.route('/static/<path:path>')
def static_files(path):
	return bottle.static_file(path,root='static')

@bottle.route('/')
def topic_index():
	print "Inside Home page"
	username=bottle.request.get_cookie('username')
	dt1=datetime.datetime.utcnow()
	print str(dt1)
	user_list.update_user_time(username,str(dt1))
	return bottle.template('index')

@bottle.route('/creditFill', method='GET')
def credit_get():
	print "inside credit fill get"
#	bottle.request.get_cookie('username')
	return bottle.template('credit-form')

@bottle.route('/creditFill', method='POST')
def credit_post():
	 return bottle.redirect('/'," Credit Card Payment Sucess!!!!")

@bottle.route('/signup',method='GET')
def signup():
	print "inside signup GET"
	username=bottle.request.get_cookie('username')
        if not username or username == "":
              return bottle.template('register-form')
        else:
                bottle.redirect('/')

@bottle.route('/signup', method='POST')
def insert_newuser():
	print "inside signup POST"
	fname=bottle.request.forms.get("fname")
	print fname
	lname=bottle.request.forms.get("lname")
	print lname
	email=bottle.request.forms.get("email")
	print email
	password=bottle.request.forms.get("password")
	print password

	if user_list.isUserExists(email) == 1:
                return {'error' : 'User already exists. Please specify different email ID'}
        else:
		dt=datetime.datetime.utcnow()
		user_list.insert_user(fname,lname,email,password,str(dt))
                return bottle.template("<p>Sign up success for {{name}}!! Please login with your eamilID</p>", name=email)

	return bottle.template('index')

@bottle.route('/login',method='GET')
def login1():
	print "inside login GET"
	username=bottle.request.get_cookie('username')
	if not username or username == "":
		return bottle.template('login-form')
	else:
		bottle.redirect('/')

@bottle.route('/login',method='POST')
def login2():	
	print "inside login POST"
	#passwds = { 'guest@guest.com' : 'guest', 'ramya123@yahoo.com':'ramya'}
	username = bottle.request.forms.get('emailid')
	password = bottle.request.forms.get('password')
	print username
	print password
	
	if not username or not password:
		return { 'error' : 'Please specify username and password' }

	session = session_manager.get_session()
	session['valid'] = False
	
#	print passwds.get(username)
#	if password and passwds.get(username) == password:
	session['valid'] = True
	session['name'] = username
	user_check=user_list.check_user(username,password)
	print user_check
	if user_check == 1:
		#cookie_id = bottle.request.get_cookie('username', str(uuid4()))		
		dt=user_list.get_user_time(username)
		print str(dt['dt'])
		bottle.response.set_cookie("username", username)
		bottle.response.set_cookie("last_logged",str(dt['dt']))
		print "cookie is set"
		return bottle.redirect('/')
		#print '<script type="text/javascript">addContent(indexlogin);</script>'
		#return bottle.template("<p>Welcome {{name}}! You are now logged in.</p>", name=username)
	else:
		return "<p>Login failed.</p>"
	
	if not session['valid']:
			return { 'error' : 'Username or password is invalid' }

@bottle.route('/products',method='POST')
def products():
	pid=bottle.request.forms.get('product_id')
	return bottle.redirect('/product-details/')

@bottle.route('/product-details/:pid',method='GET')
def products_detail_get(pid):
        print "inside product details"
	print pid
	pro_list=user_list.get_product_details(pid)
	for plist in pro_list:
		print plist['pro_id']
		print plist['pro_name']
		print plist['pro_cost']

#	return bottle.template('product_details')
	return bottle.template('product_details',myproducts=pro_list)
#        return bottle.template("<p>product_details success {{pid1}}!!</p>",pid1=pid)

@bottle.route('/product-details',method='POST')
def product_detail_post1():
        print "inside product details POST"
	qty=bottle.request.forms.get("quantity")
	pid=bottle.request.forms.get("productid")
        pro_list=user_list.update_product_cart(bottle.request.get_cookie('username'),pid,qty)
        bottle.redirect('/products')

@bottle.route('/mycart',method='GET')
def product_detail_post2():
        print "inside cart details GET"
	print (bottle.request.get_cookie('username'))
        cart_list=user_list.get_my_cart(bottle.request.get_cookie('username'))
	print cart_list
        return  bottle.template('incart',mycart=cart_list)

@bottle.route('/mycart',method='POST')
def product_detail_post3():
        print "inside my cart details POST"
        cart_list=user_list.get_my_cart(bottle.request.get_cookie('username'))
        bottle.redirect('/incart')


@bottle.route('/logout')
def logout():
	print "inside logout"
	session = session_manager.get_session()
	session['valid'] = False
	session_manager.save(session)
	bottle.response.delete_cookie('username')
	
	bottle.redirect('/')
	
@bottle.route('/products')	
def products():
	print "inside products"
	return bottle.template('products')

######************* For Running in Local Host ****************************####

connection_string = "mongodb://localhost"	
connection = pymongo.MongoClient(connection_string)
database = connection.Lab1282
user_list = topicDAO.TopicDAO(database)
bottle.debug(True)
bottle.run(host='localhost',port=3000)

######*********** For Running in Heroku Server *************************#####

#MONGO_URL = 'mongodb://heroku:heroku@oceanic.mongohq.com:10042/app22891871'
#client = pymongo.MongoClient(MONGO_URL)
#Specify the database
#db = client.app22891871
#user_list = topicDAO.TopicDAO(db)
#bottle.debug(True)
#bottle.run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))

