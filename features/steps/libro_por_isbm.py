from behave import *
from src.libro import Libro
from src.reader import *

def before_scenario(context, scenario):
	context = {}

@given("un conjunto de libros ")
def step_impl(context):
	lista_libros = []
	for row in context.table:
		libro = Libro(row['NOMBRE'], row['AUTOR'],row['ISBN'],
			row['RATING'],row['CATEGORIA'],row['IDIOMA'])
		lista_libros.append(libro)
	context.libros = lista_libros

@given("que el usuario ingresa el codigo '{isbm}'")
def step_impl(context, isbm):
	context.busqueda = isbm

@when("busque los libros por isbm")
def step_impl(context):
	resultado, mensaje = get_libro_isbn(context.libros,context.busqueda)
	context.resultado = resultado
	context.mensaje = mensaje

@then("obtendrá {total} libro de resultado")
def step_impl(context,total):
	assert 1 == int(total)

@then("este es")
def step_impl(context):
	son_libros_esperados = True
	libros_esperados = []
	for row in context.table:
		libros_esperados.append(row['LIBROS'])
		print(libros_esperados)
		print(libros_esperados[0])
		if libros_esperados[0] not in libros_esperados:
			print("No estan " + libros_esperados[0].nombre)
			son_libros_esperados = False
	assert son_libros_esperados is True

@then("obtiene el mensaje  '{mensaje}'")
def step_impl(context, mensaje):
	assert context.mensaje == mensaje