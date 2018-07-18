from behave import *
from src.libro import Libro
from src.reader import *

def before_scenario(context, scenario):
	context = {}

@given("una lista de libros")
def step_impl(context):
	lista_libros = []
	for row in context.table:
		libro = Libro(row['NOMBRE'], row['AUTOR'],row['ISBN'],
			row['RATING'],row['CATEGORIA'],row['IDIOMA'])
		lista_libros.append(libro)
	context.libros = lista_libros

@given("que el usuario ingresa Busqueda Popular")
def step_impl(context, Populares):
	context.busqueda = Populares

@when("quiere saber los libros mas rankeados")
def step_impl(context):
	resultado, mensaje = get_populares(context.libros)
	context.resultado = resultado
	context.mensaje = mensaje

@then("recibe el mensaje '{mensaje}'")
def step_impl(context, mensaje):
	assert context.mensaje == mensaje