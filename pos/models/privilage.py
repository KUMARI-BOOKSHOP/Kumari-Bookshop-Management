# pos/models/Privilage.py
from pos.models import db

class Privilage(db.Model):
    register_id = db.Column(db.Integer, primary_key=True, autoincrement=True) 
    username = db.Column(db.String(45), nullable=False, unique=True)
    password = db.Column(db.String(45), nullable=False)
    
