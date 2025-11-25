import os
import json
from flask import request, render_template, current_app, jsonify 
from . import main  # This assumes you're using a blueprint called 'main'
from config import db_config
import mysql.connector
from flask import render_template
from . import main
from db import query, execute

@main.route('/')
def index():
    return render_template('index.html', name='World')

@main.route('/about')
def about():
    return render_template('about.html', title='About', description='This is a simple Flask web app.')

@main.route('/staff_data', methods=['GET'])
def staff_data():
    # Load JSON data
    json_path = os.path.join(current_app.static_folder, 'data/staff.json')
    with open(json_path) as f:
        staff_data = json.load(f)

    # Extract departments for the dropdown
    departments = sorted({entry['department'] for entry in staff_data})

    # Get selected department from URL query (GET request)
    selected_department = request.args.get('department')

    # Filter data if a department is selected
    if selected_department:
        staff_data = [
            s for s in staff_data
            if s['department'].lower() == selected_department.lower()
        ]

    return render_template(
        'staff_data.html',
        staffData=staff_data,
        departments=departments,
        selected=selected_department
    )



@main.route('/db_data')
def db_data():
    data = query("SELECT * FROM staff")
    return render_template('db_data.html', data=data)

@main.route('/staff/<int:staff_id>')
def staff_details(staff_id):
    staff = query("SELECT * FROM staff WHERE id = %s", (staff_id,), True)
    
    # If the staff member exists, render the details page template
    if staff:
        return render_template('staff_details.html', staff=staff)
    else:
        # If no matching staff member, return 404 error page
        return "Staff member not found", 404
    
@main.route('/api/staff')
def get_staff_json():
    rows = query("SELECT * FROM staff")
    return jsonify(rows)

@main.route('/api/staff/<int:staff_id>')
def get_staff_by_id_json(staff_id):
    row = query("SELECT * FROM staff WHERE id = %s", (staff_id,), True)
    return jsonify(row)