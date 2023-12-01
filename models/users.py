from flask import Flask, render_template, jsonify, request
from db_connection import connection, cursor
import datetime
import json

# Simulated async function
def getDataApi():
    try:
        cursor.execute("SELECT * FROM car_holder")
        results = cursor.fetchall()
        print(results)
        connection.commit()
    finally:
        cursor.close()
        connection.close()

    return {'data': results}
 
def addUserApi(data):
    return(data)
    # cursor = connection.cursor()
    # first_name = data['first_name']
    # last_name = data['last_name']
    # age = data['age']
    # email_id = data['email_id']
    # phone_number = data['phone_number']
    # address = data['address']
    # postal_code = data['postal_code']
    # driving_liceance = data['driving_liceance']
    # expiry_date = data['expiry_date']
    # date_of_birth = data['date_of_birth']
    # password = data['password']
    
    # cursor.execute("SELECT * From costumer_details where first_name = %s AND last_name = %s", (first_name, last_name))
    # check = cursor.fetchone()
    # connection.commit()
    

    # if check is None:
    #     current_datetime = datetime.datetime.now()
    #     formatted_datetime = current_datetime.strftime("%Y-%m-%d %H:%M:%S")

    #     query = "INSERT INTO costumer_details (first_name, last_name, email_id, phone_number, age, address, postal_code, driving_liceance, expiry_date, date_of_birth, password, created_at, updated_At) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
    #     value = (first_name, last_name, email_id, phone_number, age, address, postal_code, driving_liceance, expiry_date, date_of_birth, password, formatted_datetime, formatted_datetime)

    #     try:
    #         cursor.execute(query, value)
    #         results = connection.commit()
    #         cursor.close()
    #         connection.close()

    #         return 'Data add successfully.'
        
    #     except Exception as e:
    #         return f"Error: {str(e)}"
        
    # else:
    #     return "Data already exits"
