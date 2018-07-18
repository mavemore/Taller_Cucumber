from behave import *
from src.libro import Libro
from src.reader import *

def before_scenario(context, scenario):
	context = {}

@given("un conjunto de libros 2")
def step_impl(context):
	lista_libros = []
	for row in context.table:
		libro = Libro(row['NOMBRE'], row['AUTOR'],row['ISBN'],
			row['RATING'],row['CATEGORIA'],row['IDIOMA'])
		lista_libros.append(libro)
	context.libros = lista_libros

@when("el usuario busque los libros más populares entre 5 o más")
def step_impl(context):
	resultado, mensaje = get_populares(context.libros)
	context.resultado = resultado
	context.mensaje = mensaje

@when("el usuario busque los libros más populares entre menos de 5")
def step_impl(context):
	resultado, mensaje = get_populares(context.libros)
	context.resultado = resultado
	context.mensaje = mensaje

@when("el usuario busque los libros más populares")
def step_impl(context):
	resultado, mensaje = get_populares(context.libros)
	context.resultado = resultado
	context.mensaje = mensaje

@then("obtendrá {total} libros de resultado")
def step_impl(context,total):
	assert len(context.resultado) == int(total)

@then("estos son 5")
def step_impl(context):
	son_libros_esperados = True
	libros_esperados = []
	for row in context.table:
		libros_esperados.append(row['LIBROS'])
		print(libros_esperados)
	if len(libros_esperados) < 5:
		son_libros_esperados = False
	assert son_libros_esperados is True

@then("estos son menos de 5")
def step_impl(context):
	son_libros_esperados = True
	libros_esperados = []
	for row in context.table:
		libros_esperados.append(row['LIBROS'])
		print(libros_esperados)
	assert son_libros_esperados is True

@then("estos son 3")
def step_impl(context):
	son_libros_esperados = True
	libros_esperados = []
	for row in context.table:
		libros_esperados.append(row['LIBROS'])
		print(libros_esperados)
	if len(libros_esperados) == 0:
		son_libros_esperados = False
	assert son_libros_esperados is True

@then("obtiene el mensaje 1 '{mensaje}'")
def step_impl(context, mensaje):
	assert context.mensaje == mensaje

@then("obtiene el mensaje 2 '{mensaje}'")
def step_impl(context, mensaje):
	assert context.mensaje == mensaje

@then("obtiene el mensaje 3 '{mensaje}'")
def step_impl(context, mensaje):
	assert context.mensaje == mensaje
