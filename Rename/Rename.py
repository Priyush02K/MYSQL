# Import required packages 
import mysql.connector 

# Establish connection to MySQL database 
mydb = mysql.connector.connect( 
	host="localhost", 
	user="username", 
	password="geeksforgeeks", 
	database="store"
) 

# Create a cursor object 
mycursor = mydb.cursor() 

# MySQL query for renaming a table 
query = "RENAME TABLE products to inventory,\ 
					buyers to customers" 
# Execute the query 
mycursor.execute(query) 

# Print names of all tables in the database 
mycursor.execute("show tables") 
myresult = mycursor.fetchall() 
for row in myresult: 
	print(row) 

# Close database connection 
mydb.close() 
