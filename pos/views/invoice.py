# from flask import Blueprint, render_template, request, redirect

# bp = Blueprint("invoice",__name__)

# class invoice:
#     def __init__(self, customer_name, address, items):
#         self.customer_name = customer_name
#         self.address = address
#         self.items = items

#     def total_amount(self):
#         return sum([item['quantity'] * item['unit_price'] for item in self.items])

# # Define a view to render the bill to the customer
# @app.route('/bill')
# def bill():
#     # Create an instance of the Bill class with sample data
#     customer_name = "John Doe"
#     address = "123 Main St, Anytown USA"
#     items = [
#         {"name": "Item 1", "quantity": 2, "unit_price": 10},
#         {"name": "Item 2", "quantity": 1, "unit_price": 20},
#         {"name": "Item 3", "quantity": 3, "unit_price": 5},
#     ]
#     bill = Invoice(customer_name, address, items)

#     # Render the bill using an HTML template
#     return render_template('bill.html', bill=bill)

# -----------------------------------------------------------
#  total = sum(item['quantity'] * item['price'] for item in items)

#     # Render the invoice template with the data
#     return render_template('invoice.html',
#                            invoice_number=invoice_number,
#                            customer_name=customer_name,
#                            customer_address=customer_address,
#                            items=items,
#                            total=total)