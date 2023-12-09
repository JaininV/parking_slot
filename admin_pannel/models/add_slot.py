from flask import Flask, render_template, jsonify, request
from db_connection import connection, cursor
from datetime import datetime
from PIL import Image
import base64
from io import BytesIO
import json

# Simulated async function 
def addSlotApi():
    current_time = datetime.now()
    print(current_time)
    return {'data': current_time}

        
    

    
