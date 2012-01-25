# -*- coding: utf-8 -*-

from flask_frozen import Freezer
from site_server import app, pages

freezer = Freezer(app)

@freezer.register_generator
def all_pages():
    for page in pages:
        yield '/' + page.path + '/'

if __name__ == '__main__':
    freezer.freeze()
