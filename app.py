from flask import Flask
from flask import render_template
import subprocess
import os
app = Flask(__name__)


@app.route('/startServer', methods=["GET", "POST"])
def button():
    proc = 0
    try:
        proc, _ = subprocess.Popen(['sh', 'WEB_DIR/serverNotebook.sh'], stdout=subprocess.PIPE,
                                   stderr=subprocess.STDOUT)
    except:
        print("Exception at process spawn")
        proc = -1
    return render_template('index.html', proc=proc)


@ app.route("/")
def hello():
    return render_template('index.html')


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=False)
