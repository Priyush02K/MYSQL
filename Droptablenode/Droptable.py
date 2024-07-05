# Python program to demonstrate
# drop clause


import mysql.connector

# Connecting to the Database
mydb = mysql.connector.connect(
host ='localhost',
database ='College',
user ='root',
)

cs = mydb.cursor()

# drop clause
statement ="DROP TABLE Geeks"

cs.execute(statement)
cs.commit()
	
# Disconnecting from the database
mydb.close()
