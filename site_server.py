# -*- coding: utf-8 -*-

from flask import Flask, render_template
from flaskext.flatpages import FlatPages, pygments_style_defs
from hungry import *


app = Flask(__name__)
app.config.from_pyfile('site_config.py')
pages = FlatPages(app)

# for syntax highlight
@app.route('/pygments.css')
def pygments_css():
    return pygments_style_defs(HungryStyle), 200, {'Content-Type': 'text/css'}

@app.route('/')
def index():
    sorted_pages = sorted(pages, key=lambda p: p.meta['order'])
    return render_template('home.html', pages=sorted_pages)

@app.route('/<path:path>/')
def page(path):
    page = pages.get_or_404(path)
    return render_template('base.html', content=page)

if __name__ == '__main__':
    app.run()