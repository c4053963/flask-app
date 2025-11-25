import mysql.connector
from config import db_config

def get_connection():
    return mysql.connector.connect(**db_config)

def query(sql, params=None, fetchone=False):
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute(sql, params or ())
    
    if fetchone:
        result = cursor.fetchone()
    else:
        result = cursor.fetchall()

    cursor.close()
    conn.close()
    return result

def execute(sql, params=None):
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute(sql, params or ())
    conn.commit()
    cursor.close()
    conn.close()