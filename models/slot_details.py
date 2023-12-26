from flask import Flask, render_template, jsonify, request
from db_connection import connection, cursor
from datetime import datetime
from PIL import Image
import base64
from io import BytesIO
import json

# Simulated async function 
def addCarNumberApi(data):
    try:
        car_number = data['car_number']
        slot = data['slot_id']

        current_time = datetime.now()
        print(current_time)

        # Insert data into database
        insert_query = "INSERT INTO `car_holder`(`slot_id`, `car_number`, `entry_time`, `total_pay`) VALUES (%s, %s, %s, %s)"
        insert_data = (
            slot,
            car_number,
            current_time,
            0
        )
        cursor.execute(insert_query, insert_data)
        connection.commit()

        # Add into slot table
        datatable = "slot_"+slot
        insert_slot_query = "INSERT INTO `slot_{}`(`car_number`, `entry_time`, `total_payment`) VALUES (%s, %s, %s)".format(slot)
        insert_slot_data = (
            car_number, 
            current_time, 
            0
        )
        cursor.execute(insert_slot_query, insert_slot_data)
        connection.commit()
        
        # Update status of slot
        update_query = "UPDATE  slot_status  SET  Available ='Unavailable' WHERE  slot_id = {}".format(slot)
        update_data = (slot)
        cursor.execute(update_query)
        connection.commit()

        cursor.close()
        connection.close()
        return "Isert sucessfuly"
    except Exception as err:
        return err
    