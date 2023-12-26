#Import users function from model folder
from flask import Flask, render_template, jsonify, request
from models.slot_details import addCarNumberApi
import asyncio
from flask import Flask, render_template

def addCarNumber():
    data = request.form
    page = addCarNumberApi(data)
    return page