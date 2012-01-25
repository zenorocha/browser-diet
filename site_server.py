# -*- coding: utf-8 -*-

from flask import Flask, render_template
from flaskext.flatpages import FlatPages, pygments_style_defs


app = Flask(__name__)
app.config.from_pyfile('site_config.py')
pages = FlatPages(app)

# for syntax highlight
@app.route('/pygments.css')
def pygments_css():
    return pygments_style_defs(app.config.get('CODE_HIGHLIGHT_STYLE')), 200, {'Content-Type': 'text/css'}

@app.route('/')
def index():
    content = ""
    for page in sorted(pages, key=lambda p: p.meta['order']):
        content = content + page.html
    return render_template('base.html', content=content)

@app.route('/<path:path>/')
def page(path):
    page = pages.get_or_404(path)
    return render_template('base.html', content=page)

if __name__ == '__main__':
    app.run()