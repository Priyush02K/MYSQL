# importing required libraries
import mysql.connector

dataBase = mysql.connector.connect(
host ="localhost",
user ="root",
passwd ="Pass#02"
)

# preparing a cursor object
cursorObject = dataBase.cursor()

# creating database
cursorObject.execute("CREATE DATABASE geeks4geeks")
