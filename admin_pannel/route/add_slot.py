from flask import Blueprint, jsonify
from admin_pannel.controller.add_slot import addSlot

add_slot_blueprint = Blueprint('add_slot', __name__)


@add_slot_blueprint.route('/add_slot', methods=['POST'])
def add_slot_api():
    # Your API logic here
    data = addSlot()
    return data 
