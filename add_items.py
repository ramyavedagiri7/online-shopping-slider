import string
from datetime import datetime
from bson.objectid import ObjectId
from pymongo import MongoClient

class additems(object):
        client = MongoClient()
        def __init__(self, database):
                client = MongoClient()
                self.db = "Lab1282"
#               self.myusers =  database.user_info
                self.coll=self.db.user_info
#               self.mycomments = database.mycomments
                self.items=self.db.items
                self.cart=self.db.cart
	
	def add(self):
		db.items.insert({

"pro_id":"DID3647",

"pro_name":	"Dell Inspiron Desktop (i3647-1231BK)",

"pro_cost":	"373.08",

"pro_description": "Intel Pentium-G3220 Processor 3.0 GHz	 3M cache
				Microsoft Windows 8.1 (64-bit)4GB DDR3 RAM 1600rpm
				500GB 7	200RPM Hard Drive	 Intel HDDVD Drive
				8-in-1 Media Card Reader
				Dell Wireless-N 1705	 

				Bluetooth 4.0"

				})



db.items.insert({

"pro_id":"DID3847",

"pro_name":	"Dell Inspiron Desktop (i3847-4616BK)",

"pro_cost":	"479.99",

"pro_description": "Intel Core i5-4440 Processor 3.1 GHz( cache)
				8GB DDR3
				1 TB 7200 rpm Hard Drive
				Windows 8"

				})



db.items.insert({

"pro_id":"HPAIO5010"

"pro_name":	"HP Pavilion 18-5010 18.5-inch All-in-One Desktop",

"pro_cost":	"594.99",

"pro_description": "AMD E1-2500 (Kabini) 1.4 GHz
				4 GB
				500 GB 7200 rpm Hard Drive
				18.5-Inch Screen	 

				AMD Radeon HD 8240 Graphics"

				})



db.items.insert({

"pro_id":"CPGM1293D",

"pro_name":	"CybertronPC Patriot GM1293D Desktop (Black/Red)",

"pro_cost":	"499.99",

"pro_description": "System: AMD A4-5300 3.40GHz Dual-Core | AMD A55 Chipset | 8GB DDR3 | 1TB HDD | Genuine Windows 8 64-bit
				Graphics: Radeon HD 7480D GPU | 24X DVD±RW Dual-Layer Drive | Audio: 8 Channel | Gigabit LAN | Keyboard and Mouse with Scroll Wheel
				Expansion Bays/Slots Total(Free): 4(3) Ext. 5.25"" | 6(5) Int. 3.5"" / 2.5"" | 1(0) PCI | 1(1) PCI-E x1 | 1(1) PCI-E x16 | 2(1) DIMM 240P
				Connectivity: 1ea. PS/2 Mouse/Keyboard | 6x USB 2.0 | 1x RJ-45 Network Ethernet 10/100/1000 | 802.11b/g/n Wireless | Audio | 1x VGA | 1x HDMI
				Chassis: Aerocool Strike-X One Gaming Mid-Tower w/400 Watt Power Supply | 1 Year Parts & Labor Warranty | Free Lifetime Tech Support"

				})



db.items.insert({

"pro_id":"GAIOZX4270",

"pro_name":	"Gateway ZX4270-UR30 19.5-Inch All-in-One Desktop (Black)",

"pro_cost":	"429.99",

"pro_description": "AMD E-Series Dual Core E1-2500 1.4 GHz (1 MB Cache)
				4 GB DDR3
				750 GB 5400 rpm Hard Drive
				19.5-Inch Screen	 AMD Radeon HD 8240
				Windows 8"

				})



db.items.insert({

"pro_id":"LICAIOC365",

"pro_name":	"Lenovo IdeaCentre C365 19.5-Inch All-in-One Desktop (57323425)",

"pro_cost":	"449.99",

"pro_description": "AMD E1-2500 1.4 GHz Processor
				4 GB DDR3 RAM
				500 GB 7200 rpm Hard Drive
				19.5-Inch Screen
				Windows 8.1"

				})


				

db.items.insert({

"pro_id":"AMPMD101LL",

"pro_name":	"Apple MacBook Pro MD101LL/A 13.3-Inch Laptop (NEWEST VERSION)",

"pro_cost":	"1184.99",

"pro_description": "2.5 GHz Dual-Core Intel Core i5 processor
				4 GB DDR3 RAM; 500 GB Hard Drive
				13.3 inch LED-backlit display 1280-by-800 resolution
				Intel HD Graphics 4000"

				})

				

db.items.insert({

"pro_id":"AMT7200",

"pro_name":	"Apple MacBook 13 inch White Intel Core 2 Duo T7200",

"pro_cost":	"219.99",

"pro_description": "Intel Core 2 Duo T7200 Processor 2GHz
				1GB DDR2 RAM
				160GB Hard Drive
				13-Inch Screen	 Intel GMA 950
				Apple Mac OS X v10.6 Leopard"

				})



db.items.insert({

"pro_id":"AMAMD760LL",

"pro_name":	"Apple MacBook Air MD760LL/A 13.3-Inch Laptop (NEWEST VERSION)",

"pro_cost":	"1048.99",

"pro_description": "Up to 12 Hours of Battery Life	 OS X Mavericks
				1.3GHz dual-core Intel Core i5 processor 	 Turbo Boost up to 2.6GHz
				13-Inch LED-backlit Display; 1440x900 Resolution; Intel HD Graphics 5000
				802.11ac Wi-Fi
				128 GB Flash Storage	

				4 GB 1600 MHz LPDDR3 Memory"

				})



db.items.insert({

"pro_id":"AMPMC700LL",

"pro_name":	"Apple MacBook Pro MC700LL/A 13.3-Inch Laptop (OLD VERSION)",

"pro_cost":	"500",

"pro_description": "2.3GHz dual-core Intel Core i5 processor
				320 GB Hard Drive	 8x DVD/CD SuperDrive	 4 GB DDR3 RAM	 Precision aluminum unibody
				13.3 inch LED-backlit display	 1280-by-800 resolution
				Intel HD Graphics 3000 with 384MB of DDR3 SDRAM shared with main memory
				High Speed Thunderbolt Port	 FaceTime HD Camera	 Mac OS X v10.7 Lion"

				})



				

				

				
