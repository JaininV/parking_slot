from flask import Blueprint, jsonify

index_blueprint = Blueprint('index', __name__)

@index_blueprint.route('/index', methods=['GET'])
def index_api():
    # Your API logic here
    data = {'message': 'This is the /index API'}
    return jsonify(data)
