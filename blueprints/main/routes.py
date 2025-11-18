import os
import json
from flask import request, render_template, current_app
from . import main  # This assumes you're using a blueprint called 'main'

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