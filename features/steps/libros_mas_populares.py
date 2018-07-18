from behave import *
from src.libro import Libro
from src.reader import *

def before_scenario(context, scenario):
  context = {}

@given("un conjunto de n libros")
def step_impl(context):
  lista_libros = []
  for row in context.table:
    libro = Libro(row['NOMBRE'], row['AUTOR'],row['ISBN'],
      row['RATING'],row['CATEGORIA'],row['IDIOMA'])
    lista_libros.append(libro)
  context.libros = lista_libros

@given("que el usuario quiere visualizar los libros más populares en {libros} libros")
def step_impl(context, libros):
  n_libros = int(libros)
  context.libros = context.libros if n_libros > 5 else context.libros[:n_libros]

@when("busque los libros")
def step_impl(context):
  resultado, mensaje = get_populares(context.libros)
  context.resultado = resultado
  context.mensaje = mensaje

@then("obtendrá {total} libros de resultado(s)")
def step_impl(context,total):
  assert len(context.resultado) == int(total)

@then("estos son:")
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

@then("obtiene el mensaje: '{mensaje}'")
def step_impl(context, mensaje):
  assert context.mensaje == mensaje
