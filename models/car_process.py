from flask import Flask, render_template, jsonify, request
from db_connection import connection, cursor
from datetime import datetime
from PIL import Image
import base64
from io import BytesIO
import json

# Simulated async function 
def carParkApi(data):
    current_time = datetime.now()
    print(current_time)
    try:
        cursor.execute("SELECT * FROM slot_status")
        results = cursor.fetchall()
        connection.commit()
    finally:
        cursor.close()
        connection.close()

    return {'data': results}
        
def checkAvailableSlotApi():
    try:
        # total_slot = "SELECT COUNT(slot_status.slot_id) FROM slot_status LEFT JOIN slot_details ON slot_status.slot_id = slot_details.slot_id WHERE slot_details.status = 'active'"
        # cursor.execute(total_slot)
        # count = cursor.fetchone()[0]

        # query = "SELECT slot_status.slot_id, slot_status.mall_slot_number, slot_status.Available, slot_details.qr_code_image FROM slot_status LEFT JOIN slot_details ON slot_status.slot_id = slot_details.slot_id WHERE slot_details.status = 'active' AND slot_status.Available = 'Available' limit 1"
        # # query = "SELECT slot_details.qr_code_image FROM slot_status LEFT JOIN slot_details ON slot_status.slot_id = slot_details.slot_id WHERE slot_details.status = 'active' AND slot_status.Available = 'Available' limit 1"
        # cursor.execute(query)
        # data = cursor.fetchone()

        # cursor.close()
        # connection.close()
        
        # if data[3]:
        #     image_data = data[3]
        #     print(image_data)

        #     # Convert image data to bytes
        #     image_bytes = io.BytesIO(image_data)

        #     # Serve the image as a response
        #     return image_bytes

        # else:
        #     return "No image found in the database"
        # # image = data[3]
        # # binary_data = base64.b64decode(image)

        # # if data: 
        # #     image_data = binary_data

        # #     # Save the image data to a temporary file
        # #     temp_file_path = 'D:/D/Certification/Projects/Updated parking slot/public/temp_image.jpeg'
        # #     with open(temp_file_path, 'wb') as temp_file:
        # #         temp_file.write(image_data)
        # #     print(temp_file_path)
        select_query = "SELECT slot_status.slot_id, slot_status.mall_slot_number, slot_details.code_name, slot_details.qr_code_image FROM slot_status LEFT JOIN slot_details ON slot_status.slot_id = slot_details.slot_id WHERE slot_details.status = 'active' AND slot_status.Available = 'Available' limit 1"
        cursor.execute(select_query)
        result = cursor.fetchone()
        cursor.close()
        connection.close()

        if result:
            slot_id, mall_slot_code, code_name, image_data = result
            img_bytesio = BytesIO(image_data)
            return {
                 'code_data' : code_name,
                 'img_data' : base64.b64encode(image_data).decode('utf-8'),
                 'slot_id': slot_id,
                 'mall_slot_code' : mall_slot_code
            }
        
        else:
            return "Image not found:"
            
    except Exception as err:
            return err
        
    

    
