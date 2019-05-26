import connexion
from flask_cors import CORS

app = connexion.FlaskApp(__name__, specification_dir='swagger/')
app.add_api('api.yaml')

CORS(app.app)
