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

@when("quiere saber los libros mas rankeados")
def step_impl(context):
	result, mess = get_populares(context.libros)
	context.resultado = result
	context.mensaje = mess

@then(u'obtendra los libros mas rankeados')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then  obtendra los libros mas rankeados')


@then(u'estos libros son')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then estos libros son')	
	
@then("recibe el mensaje '{mensaje}'")
def step_impl(context, mensaje):
	assert context.mensaje == mensaje