# pos/models/products.py
from pos.models import db


class Products(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    productId = db.Column(db.String(10), nullable=False)
    name = db.Column(db.String(45), nullable=False)
    buying_price = db.Column(db.Integer, nullable=False)
    selling_price = db.Column(db.Integer, nullable=False)
    stock = db.Column(db.Integer, nullable=False)
