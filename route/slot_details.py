from flask import Blueprint, jsonify
from controller.slot_details import addCarNumber, exitCarProcess

slot_details_blueprint = Blueprint('slot_details', __name__)


@slot_details_blueprint.route('/car_number/entry', methods=['POST'])
def add_number_api():
    # Your API logic here
    data = addCarNumber()
    return data 

@slot_details_blueprint.route('/car_number/exit', methods=['POST'])
def exit_Car_Process_Api():
    # Your API logic here
    data = exitCarProcess()
    return data 
