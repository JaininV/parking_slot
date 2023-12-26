from flask import Blueprint, jsonify
from controller.slot_details import addCarNumber

slot_details_blueprint = Blueprint('slot_details', __name__)


@slot_details_blueprint.route('/car_number/entry', methods=['GET'])
def add_number_api():
    # Your API logic here
    data = addCarNumber()
    return data 
