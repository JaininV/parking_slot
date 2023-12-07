from flask import Flask, render_template, jsonify, request
from db_connection import connection, cursor
from datetime import datetime
from PIL import Image
import base64
from io import BytesIO
import json

# Simulated async function 
def addNumberApi():
    current_time = datetime.now()
    print(current_time)
    return {'data': current_time}
        
def checkAvailableSlotApi():
    try:
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
        
    

    
