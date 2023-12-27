#Import users function from model folder
from flask import Flask, render_template, jsonify, request
from models.slot_details import addCarNumberApi, exitCarProcessApi
import asyncio
from flask import Flask, render_template

def addCarNumber():
    data = request.form
    page = addCarNumberApi(data)
    return page

def exitCarProcess():
    data = request.form
    page = exitCarProcessApi(data)
    return page