# Establish connection to MySQL database 
import mysql.connector 

db = mysql.connector.connect( 
	host="localhost", 
	user="root", 
	password="root123", 
	database="geeks"
) 

# getting the cursor by cursor() method 
mycursor = db.cursor() 
query_1 = "ALTER TABLE person ADD salary int(20);"
query_2 = "UPDATE persons SET salary = '145000' where Emp_Id=12;"

# execute the queries 
mycursor.execute(query_1) 
mycursor.execute(query_2) 

mycursor.execute("select * from persons;") 
myresult = mycursor.fetchall() 
for row in myresult: 
	print(row) 

db.commit() 

# close the Connection 
db.close() 
