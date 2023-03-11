from flask import Flask
from pos.config import Config
from pos.models import db
from pos.views import customers, privilage, products, emploees, suppliers ,transactions, invoice

def create_app(config=Config):
	app = Flask(__name__)
	
	app.config.from_object(config)

	db.init_app(app)

	# app.register_blueprint(privilage.bp)
	app.register_blueprint(products.bp)
	app.register_blueprint(customers.bp)
	app.register_blueprint(emploees.bp)
	app.register_blueprint(suppliers.bp)
	app.register_blueprint(transactions.bp)
	# app.register_blueprint(invoice.bp)
	with app.app_context():
		db.create_all()
		# print(app.url_map)
		return app
	