# -*- coding: utf-8 -*-
class Libro(object):
	"""Clase Libro"""
	def __init__(self, nombre, autor, isbn, rating, categoria, idioma):
		self.nombre = nombre
		self.autor = autor
		self.isbn = isbn
		self.categoria = categoria
		self.rating = rating
		self.idioma = idioma