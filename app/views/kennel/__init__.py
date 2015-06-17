from app import app; from app.views import *

@app.route("/city-kennel")
def donate():
    return render.template('kennel')