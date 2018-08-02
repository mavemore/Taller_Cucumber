"""Funciones necesarias para realizar busquedas de libros."""

def get_libros_autor(lista_libros, autor):
	"""Busqueda de libros por autor"""
	busqueda = list(filter(lambda x: x.autor.lower() == autor.lower(), lista_libros))
	if len(busqueda)>0:
		mensaje = 'Existen '+str(len(busqueda))+' libros de este autor.'
	else:
		mensaje = 'No existen libros para ese autor.'
	return busqueda, mensaje

def get_libro_isbn(lista_libros, isbn):
	"""Busqueda de libro por isbn"""
	busqueda = list(filter(lambda x: x.isbn == isbn, lista_libros))
	resultado = None
	if len(busqueda)>0:
		resultado = busqueda[0]
		mensaje = 'Se encontro 1 libro con ese ISBN.'
	else:
		mensaje = 'No existe un libro con ese ISBN.'
	return resultado, mensaje

def get_libros_idioma(lista_libros, idioma):
	"""Busqueda de libros por idioma"""
	busqueda = list(filter(lambda x: x.idioma.lower() == idioma.lower(), lista_libros))
	if len(busqueda)>0:
		mensaje = 'Existen '+str(len(busqueda))+' libros en este idioma.'
	else:
		mensaje = 'No existen libros para en ese idioma.'
	return busqueda, mensaje 

def get_libros_categoria(lista_libros, categoria):
	"""Busqueda de libros por categoria"""
	busqueda = list(filter(lambda x: x.categoria.lower() == categoria.lower(), lista_libros))
	if len(busqueda)>0:
		mensaje = 'Existen '+str(len(busqueda))+' libros de esta categoria.'
	else:
		mensaje = 'No existen libros para de esta categoria.'
	return busqueda, mensaje

def get_populares(lista_libros):
	"""Devuelve los top 5 libros con mejor rating"""
	lista = sorted(lista_libros, key=lambda x: x.rating, reverse=True)
	if len(lista)>=5:
		busqueda = lista[:5]
		mensaje = 'Estos son los 5 libros con mejor puntuacion.'
	elif len(lista)>=0:
		busqueda = lista
		mensaje = 'Estos son los '+str(len(lista))+' libros con mejor puntuacion.'
	else:
		busqueda = []
		mensaje = 'No existen libros a mostrar.'
	return busqueda, mensaje