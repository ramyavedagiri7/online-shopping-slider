
from datetime import datetime
from bson.objectid import ObjectId
from pymongo import MongoClient

class TopicDAO(object):
#	client = MongoClient()
	def __init__(self, database):
#		client = MongoClient()
		self.db = database
#		self.myusers =  database.user_info
		self.coll=self.db.user_info
#		self.mycomments = database.mycomments
		self.items=self.db.items
		self.cart=self.db.cart

	def insert_user(self,fname,lname,email,password,dt):
		print "inside insert_user"
		newuser = [{'fname':fname,'lname':lname,'email':email,'password':password,'dt':str(dt)}]
		self.coll.insert(newuser)
	def update_user_time(self,username,dt):
                print "inside insert_user"
                self.coll.update({'email':username},{'$set': {'dt':str(dt)}})

	def get_user_time(self,username):
                print "inside insert_user"
                return self.coll.find_one({'email':username},{'dt':1,'_id':0})

	def check_user(self,email,password):
		print "inside check_user"
		print email
		print password
		user_exist=self.coll.find({'email': email,'password': password })
		print user_exist
		print user_exist.count()
		if user_exist.count() == 1:
			return 1
		else:
			return 0
	def isUserExists(self,email):
                print "inside isuserExits"
                print  email
                user_exist=self.coll.find({'email': email})
                print user_exist
                print user_exist.count()
                if user_exist.count() == 1:
                        return 1
                else:
                        return 0

	def get_product_details(self,pid):
		l= []		
		print "pro count is"
		print self.items.find({'pro_id': pid}).count()
		for each_prod_det in self.items.find({'pro_id': pid}):
			print each_prod_det['pro_name']
			l.append({'pro_name': each_prod_det['pro_name'],'pro_id': each_prod_det['pro_id'],'pro_cost': each_prod_det['pro_cost'],'pro_description':each_prod_det['pro_description']})
		return l

	def get_my_cart(self,username):
                l= []
		cart_items=self.cart.find({'_id':username})
		for each_item in cart_items:
			list= each_item['pro_list']
			print "list length is"
			list_len=len(list)
			list_len=list_len-1
			while list_len >= 0:
				print list_len
				plist=self.get_product_details(list[list_len]['pro_id'])
				l.append({'pro_name':plist[0]['pro_name'],'pro_cost':list[list_len]['tot_cost'],'pro_id':plist[0]['pro_id'],'pro_qty':list[list_len]['pro_quantity']})
				list_len= list_len-1
			for each_l in l:
				print each_l['pro_name']
				print each_l['pro_id']	
			return l

	def update_product_cart(self,username,pid,qty):
		print "inside update prodcut cart"
		print pid
		print qty

		if int(qty) == 0:
			print "inside qty 0"
			self.cart.update({'_id':username}, {'$pull': {'pro_list': { 'pro_id':pid }}})
			#print self.cart.find().limit(1)[0].pro_list.length
			#if self.cart.find().limit(1)[0].pro_list.length == 0:
			#	self.cart.remove({'_id':username})	
	
		else:
			pro=self.get_product_details(pid)
			for each_pro in pro:
				total_cost=float(each_pro['pro_cost'])*int(qty)
				#item_exists=self.cart.find({'_id':username},{'pro_list.pro_id':pid})
				item_exists=self.cart.find({'$and': [{'_id':username}, {'pro_list': { '$elemMatch': {'pro_id':pid}}}]})
				print item_exists.count()
				if item_exists.count() == 1:
					print "Inside count=1 if"
					self.cart.update({'_id': username,'pro_list.pro_id':pid},{'$set':{"pro_list.$.pro_quantity":qty,"pro_list.$.tot_cost":total_cost}})
				else:
					print "Inside count=0 else1"
					if self.cart.find({'_id': username}).count() == 0:
						print "Inside count=0 if"
						self.cart.insert([{'_id':username, 'pro_list' :[{'pro_id':pid,'tot_cost':total_cost,'pro_quantity':qty}]}])
					else:
						print "Inside count=0 else2"
						self.cart.update({'_id':username}, {'$push': {'pro_list':{ 'pro_id':pid,'tot_cost':total_cost,'pro_quantity':qty }}})


