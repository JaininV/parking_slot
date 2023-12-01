from flask import Blueprint, jsonify
from controller.car_process import carPark, checkAvailableSlot

car_park_blueprint = Blueprint('car_process', __name__)


@car_park_blueprint.route('/car_park', methods=['GET'])
def car_park_api():
    # Your API logic here
    data = carPark()
    return data 

@car_park_blueprint.route('/slot', methods=['GET'])
def check_availbale_slot_api():
    # Your API logic here
    data = checkAvailableSlot()
    return data
