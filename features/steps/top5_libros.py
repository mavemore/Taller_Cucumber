from behave import *
from src.libro import Libro
from src.reader import *

def before_scenario(context, scenario):
	context = {}

@given("el conjunto de libros")
def step_impl(context):
	lista_libros = []
	for row in context.table:
		libro = Libro(row['NOMBRE'], row['AUTOR'],row['ISBN'],
			row['RATING'],row['CATEGORIA'],row['IDIOMA'])
		lista_libros.append(libro)
	context.libros = lista_libros

@when("el usuario requiere el top5 de libros")
def step_impl(context):
	resultado, mensaje = get_populares(context.libros)
	context.resultado = resultado
	print(len(context.resultado))
	print(len(context.libros))

	context.mensaje = mensaje

@then("obtendrá {total} libros al top")
def step_impl(context,total):
	assert len(context.resultado) == int(total)

@then("son")
def step_impl(context):
	son_libros_ordenados = True
	libros_ordenados = sorted(context.libros,key=lambda x: x.rating ,reverse=True)
	for i  in  range(len(context.resultado)):
		if libros_ordenados[i] != context.resultado[i]:
			son_libros_ordenados = False
			print(libros_ordenados)
	#print(libros_ordenados)
	assert son_libros_ordenados is True

@then("obtiendo el mensaje '{mensaje}'")
def step_impl(context, mensaje):
	assert context.mensaje == mensaje
