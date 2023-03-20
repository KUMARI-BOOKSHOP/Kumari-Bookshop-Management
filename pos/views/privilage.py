from flask import Blueprint, render_template, redirect, url_for, request, session
from werkzeug.security import generate_password_hash, check_password_hash
from pos.models.privilage import Privilage
from pos.models import db

bp = Blueprint('privilage', __name__)

def index():
        if 'username' in session:
            return f"Logged in as {session['username']}"
        return 'You are not logged in'

@bp.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form["username"]
        password = request.form['password']
    
        credentials = Privilage.query.filter_by(username=username).first()

        if credentials is not None:
            return redirect('/transactions/add')
        else:
            print("Ivalid credentials")
            return redirect('/login')
        

    return render_template('landingpage.html')

@bp.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        privilage = Privilage()

        privilage.username = request.form['username']
        privilage.password = request.form['password']

        db.session.add(privilage)
        db.session.commit()
        return redirect("/transactions/add")
    return render_template('landingpage.html')

@bp.route('/logout')
def logout():
    session.pop('username', None)
    return redirect('/login')


