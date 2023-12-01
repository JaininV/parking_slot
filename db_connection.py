import mysql.connector
from mysql.connector import Error


# Replace these values with your MySQL server information
config = {
    'user': 'root',
    'password': 'root',
    'host': 'localhost',
    'database': 'parking_slot'

}

try:
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor(buffered=True)

except Error as err:
    print(f"Error: {err}")


# Create a cursor object for executing SQL queries



