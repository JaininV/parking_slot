import qrcode
from io import BytesIO
from PIL import Image
import datetime
import mysql.connector

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
    
except mysql.connector.Error as err:
    print(f"Error: {err}")


# Create a QR code instance
qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)

# Add the parking location data to the QR code
qr.add_data('Slot 12')
qr.make(fit=True)

# Create an image from the QR code
img = qr.make_image(fill_color="black", back_color="white")

# Convert image to bytes
img_bytesio = BytesIO()
img.save(img_bytesio)
img_bytesio.seek(0)
img_bytes = img_bytesio.read()

# Date and time
current_datetime = datetime.datetime.now()
formatted_datetime = current_datetime.strftime("%Y-%m-%d %H:%M:%S")

# Insert QR code data into the database
insert_query = 'INSERT INTO slot_details (slot_id, location, code_name, qr_code_image, total_car_vehicle, total_colection, created_at, updated_at) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)'
data = (
    12,
    'Slot 12 in ground floor',
    'Slot 12',
    img_bytes,
    0,
    0,
    current_datetime,
    current_datetime
)
cursor.execute(insert_query, data)
connection.commit()