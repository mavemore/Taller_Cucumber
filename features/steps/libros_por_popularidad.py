from behave import *
from src.libro import Libro
from src.reader import *

def before_scenario(context, scenario):
	context = {}

@when("busque los libros por popularidad")
def step_impl(context):
	resultado, mensaje = get_populares(context.libros)
	context.resultado = resultado
	context.mensaje = mensaje