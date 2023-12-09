from flask import Blueprint, jsonify
from controller.add_slot import addSlot

add_slot_blueprint = Blueprint('add_slot', __name__)


@add_slot_blueprint.route('/car_number', methods=['GET'])
def add_slot_api():
    # Your API logic here
    data = addSlot()
    return data 
