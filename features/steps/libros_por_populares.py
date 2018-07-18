from behave import *
from src.libro import Libro
from src.reader import *

def before_scenario(context, scenario):
	context = {}

@given("un conjunto de libros por populares")
def step_impl(context):
	lista_libros = []
	for row in context.table:
		libro = Libro(row['NOMBRE'], row['AUTOR'],row['ISBN'],
			row['RATING'],row['CATEGORIA'],row['IDIOMA'])
		lista_libros.append(libro)
	context.libros = lista_libros

@given("usando una cantidad de {libros} libros")
def step_impl(context, libros):
	context.libros = context.libros[:int(libros)]

@when("busque los {cantidad} libros con mejor puntuacion")
def step_impl(context, cantidad):
	resultado, mensaje = get_populares(context.libros)
	context.resultado = resultado
	context.mensaje = mensaje

@then("obtendrá {total} libros con mejor puntuacion")
def step_impl(context,total):
	assert len(context.resultado) == int(total)

@then("estos son populares")
def step_impl(context):
	son_libros_esperados = True
	libros_esperados = []
	for row in context.table:
		libros_esperados.append(row['LIBROS'])
		print(libros_esperados)
	for libro in context.resultado:
		print(libro.nombre)
		if libro.nombre not in libros_esperados:
			print("No estan " + libro.nombre)
			son_libros_esperados = False
	assert son_libros_esperados is True

@then("obtiene el mensaje '{mensaje}' populares")
def step_impl(context, mensaje):
	assert context.mensaje == mensaje