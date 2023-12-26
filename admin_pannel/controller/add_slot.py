#Import users function from model folder
from flask import Flask, render_template, jsonify, request
from admin_pannel.models.add_slot import addSlotApi
import asyncio
from flask import Flask, render_template

def addSlot():
    data = request.form
    page = addSlotApi(data)
    return page
