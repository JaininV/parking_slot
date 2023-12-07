from flask import Blueprint, jsonify
from controller.slot_details import addNumber

add_slot_blueprint = Blueprint('add_slot', __name__)


@add_slot_blueprint.route('/car_number', methods=['GET'])
def add_slot_api():
    # Your API logic here
    data = addNumber()
    return data 
