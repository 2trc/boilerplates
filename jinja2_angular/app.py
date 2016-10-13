from aiohttp import web
import aiohttp_jinja2
import jinja2

@aiohttp_jinja2.template('tmpl.index')
async def index(request):

    return {}

app = web.Application()

app = web.Application()

app.router.add_route('GET', '/', index)

app.router.add_static('/css', './static/css')

aiohttp_jinja2.setup(app,
                     loader = jinja2.FileSystemLoader('./templates/'))

web.run_app(app, port=5003)