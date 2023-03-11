from flask import Blueprint, render_template, request, redirect, jsonify
from pos.models.products import Products
from pos.models.transactions import Transactions
from pos.models.transactions_products import TransactionProducts
from pos.models import db

bp = Blueprint("transactions",__name__)

@bp.route("/transactions")
def transactions_list():
	transactions = Transactions.query.all()
	return render_template("transactions/list.html",transactions=transactions)

@bp.route("/transactions/add", methods=["GET","POST"])
def transactions_add():
	if request.method == "POST":
		
		products = request.form.getlist("products")
		products_qty = request.form.getlist("products_qty")

		transactions = Transactions()
		db.session.add(transactions)
	
		db.session.flush()

		for i, product in enumerate(products):
			
			transactions_products = TransactionProducts()
			transactions_products.transaction_id = transactions.id
			transactions_products.product_id = int(product)
			transactions_products.product_qty = int(products_qty[i])
			result = db.session.query(Products).filter(Products.id == product).all()
			db.session.add(transactions_products)
			db.session.flush()

		db.session.commit()
		return redirect("/transactions")
	return render_template("transactions/form_add.html")

# @bp.route('/transactions/bill', methods=["GET"])
# def bill():
# 	transaction_id = request.args["id"]
# 	details = TransactionProducts.query.filter_by(id=transaction_id).first()
    
# 	# if details is None:
#     # 		return jsonify({'error': 'User not found'}), 404
	
# 	products = [
        
#     ]
# 	bill = (products)

#     # Render the bill using an HTML template
# 	return render_template('bill.html', bill=bill)

# def total_amount(self):
# return sum([item['quantity'] * item['unit_price'] for item in self.items])
# {"name": "Item 1", "quantity": 2, "unit_price": 10},
# {"name": "Item 2", "quantity": 1, "unit_price": 20},
# {"name": "Item 3", "quantity": 3, "unit_price": 5},

@bp.route('/generate_bill/<int:id>')
def generate_bill(id):
    products = TransactionProducts.query.filter_by(id=id).all()
    total_price = calculate_total_price(products)

    return render_template('bill.html', id=id, products=products, total_price=total_price)

def calculate_total_price(products):
    total_price = 0

    for product in products:
        total_price += (product.product_qty* product.selling_price)
		
    return total_price