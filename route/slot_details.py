from flask import Blueprint, jsonify
from controller.slot_details import addNumber

slot_details_blueprint = Blueprint('slot_details', __name__)


@slot_details_blueprint.route('/car_number', methods=['GET'])
def add_number_api():
    # Your API logic here
    data = addNumber()
    return data 
