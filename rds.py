import pymysql
import os
Database_endpoint="mydb.cikezqynv1li.ap-southeast-1.rds.amazonaws.com"
Username="admin"
Password="Amazon100%"
try:
  print("Connecting to "+Database_endpoint)
  db = pymysql.connect(host=Database_endpoint, user=Username, password=Password)
  print ("Connection successful to "+Database_endpoint)
except Exception as e:
  print ("Connection unsuccessful due to "+str(e))
