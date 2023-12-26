from flask import Flask, render_template, jsonify, request
from db_connection import connection, cursor
import datetime
from PIL import Image
import qrcode
from io import BytesIO
import base64
import json

# Simulated async function 
def addSlotApi(data):
    slot_id = data['slot_id']
    location = data['location']
    code_name = data['code_name']
    mall_slot_number = data['mall_slot_number']
    datatable_name = 'slot_' + slot_id

    print(datatable_name)
    check_1 = 'SELECT * FROM slot_details where slot_id = %s'
    check_2 = 'SHOW TABLES like %s'

    cursor.execute(check_1,[slot_id])
    result_1 = cursor.fetchall()

    cursor.execute(check_2, [datatable_name])
    result_2 = cursor.fetchall()
    
    if result_2 == []:
        query = """
            CREATE TABLE IF NOT EXISTS `slot_{}` (
                id int NOT NULL AUTO_INCREMENT,
                car_number int NOT NULL,
                entry_time datetime(6) NOT NULL,
                exit_time datetime(6) NOT NULL,
                total_time int NOT NULL,
                total_payment int NOT NULL,
                PRIMARY KEY (id)
            ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
            """.format(slot_id)
        
        cursor.execute(query)
        connection.commit()

        # Add qr code into database
        # # Create a QR code instance
        qr = qrcode.QRCode(
            version=1,
            error_correction=qrcode.constants.ERROR_CORRECT_L,
            box_size=10,
            border=4,
        )

        # Add the parking location data to the QR code
        qr.add_data(code_name)
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
        formatted_datetime = current_datetime.strftime("%Y-%m-%d %H:%M")   

        slot_details_query = 'INSERT INTO slot_details (slot_id, location, code_name, qr_code_image, total_car_vehicle, total_colection, created_at, updated_at) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)'
        data = (
            slot_id,
            location,
            code_name,
            img_bytes,
            0,
            0,
            formatted_datetime,
            formatted_datetime
        )

        cursor.execute(slot_details_query, data)
        connection.commit()

        slot_status_query = "INSERT INTO slot_status (slot_id, mall_slot_number, last_use) VALUES (%s, %s, %s)"
        slot_status_data = (
            slot_id,
            mall_slot_number,
            formatted_datetime
        )

        cursor.execute(slot_status_query, slot_status_data)
        connection.commit()

        cursor.close()
        connection.close()
        return {'msg': 'Slot added successfully.'}
    else:
        return {'msg': 'Slot is already available.'}

    # Check slot availabilit
    # # Create a QR code instance
    # qr = qrcode.QRCode(
    #     version=1,
    #     error_correction=qrcode.constants.ERROR_CORRECT_L,
    #     box_size=10,
    #     border=4,
    # )

    # # Add the parking location data to the QR code
    # qr.add_data(code_name)
    # qr.make(fit=True)

    # # Create an image from the QR code
    # img = qr.make_image(fill_color="black", back_color="white")

    # # Convert image to bytes
    # img_bytesio = BytesIO()
    # img.save(img_bytesio)
    # img_bytesio.seek(0)
    # img_bytes = img_bytesio.read()

    # # Date and time
    # current_datetime = datetime.datetime.now()
    # formatted_datetime = current_datetime.strftime("%Y-%m-%d %H:%M")   

    # insert_query = 'INSERT INTO slot_details (slot_id, location, code_name, qr_code_image, total_car_vehicle, total_colection, created_at, updated_at) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)'
    # data = (
    #     slot_id,
    #     location,
    #     code_name,
    #     img_bytes,
    #     0,
    #     0,
    #     formatted_datetime,
    #     formatted_datetime
    # )

    # cursor.execute(insert_query, data)
    # connection.commit()

        
    

    
