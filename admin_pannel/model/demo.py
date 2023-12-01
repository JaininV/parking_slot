# Import the required modules
import mysql.connector
import base64
from PIL import Image
import io 

# For security reasons, never expose your 

# Create a connection
mydb = mysql.connector.connect(
	host="localhost",
	user="root",
	password="root",
	database="parking_slot" # Name of the database
)

# Create a cursor object
cursor = mydb.cursor()

file_path = 'D:/D/Certification/Projects/Updated parking slot/data/qr_code'
file = open(file_path+'/parking_location_qr_G1.png','rb').read()

# We must encode the file to get base64 string
file = base64.b64encode(file)	

# Sample data to be inserted
args = (8, 'Sample Name', file)

# Prepare a query
query = 'INSERT INTO slot_details (slot_id, code_name, qr_code_image) VALUES(%s, %s, %s)'
 
# Execute the query and commit the database.
cursor.execute(query,args)
mydb.commit()
