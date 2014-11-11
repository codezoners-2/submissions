from flask import render_template, Flask

app = Flask(__name__)
app.jinja_env.add_extension('jinja2.ext.do')

@app.route('/flag/', methods=['POST'])
def run_flag(name=None):
	return render_template('flag_template.html')
	
if __name__ == "__main__":
	app.debug = True
	app.run()
