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

@given("que la lista de libros es de {total} libros")
def step_impl(context, total):
    context.libros = context.libros[:int(total)]

@when("busque los libros populares")
def step_impl(context):
    resultado, mensaje = get_populares(context.libros)
    context.resultado = resultado
    context.mensaje = mensaje

@then("se obtendrá {numero} libros de resultado")
def step_impl(context, numero):
    assert len(context.resultado) == int(numero)

@then("estos son los siguientes")
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

@then("se obtiene el mensaje '{mensaje}'")
def step_impl(context, mensaje):
    assert context.mensaje == mensaje
