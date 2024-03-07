#Import users function from model folder
from flask import Flask, render_template, jsonify, request
from models.car_process import carParkApi, checkAvailableSlotApi
import asyncio
from flask import Flask, render_template

def carPark():
    data = request.form
    page = carParkApi(data)
    return page
 
def checkAvailableSlot():
    page = checkAvailableSlotApi()
    return render_template('index.html', c_data = page['code_data'], img = page['img_data']) 