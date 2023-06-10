from app import app
from app.views import *


@app.route("/subscribe", methods=['GET', ])
def subscribe_page():
    return render.template('subscribe')
