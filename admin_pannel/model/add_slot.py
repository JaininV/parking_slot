#Import users function from model folder
from flask import Flask, render_template, jsonify, request
from models.slot_details import addNumberApi
import asyncio
from flask import Flask, render_template

def addNumber():
    # data = request.form
    page = addNumberApi()
    return page