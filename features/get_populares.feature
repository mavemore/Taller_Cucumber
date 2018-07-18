# language: es

Característica: Obtener libros más populares

  @popularidad
  Escenario: Busca libros más populares y hay 5 o mas libros
      Dado un conjunto de libros
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
     | Corazonadas              | Benito Taibo  | 9786070736315 | 4.49   | jóvenes   | español |
     | Anansi Boys              | Neil Gaiman   | 9780060515195 | 4.01   | fantasía  | inglés  |
     | American Gods            | Neil Gaiman   | 9780380789030 | 4.11   | fantasía  | inglés  |
     | Stardust                 | Neil Gaiman   | 9780380804559 | 4.08   | fantasía  | inglés  |
     | 1984                     | George Orwell | 9780451524935 | 4.16   | scifi     | inglés  |
     | La Historia Interminable | Michael Ende  | 9789705804809 | 4.18   | fantasía  | español |
      Cuando busque los libros mas populares
      Entonces obtendrá 5 libros de resultado
      Y estos son
      | LIBROS                   |
      | Corazonadas              |
      | La Historia Interminable |
      | 1984                     |
      | American Gods            |
      | Stardust                 |
      Y obtiene el mensaje 'Estos son los 5 libros con mejor puntuación.'

@popularidad
Escenario: Busca libros más populares y hay menos de 5 libros
      Dado un conjunto de libros
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
     | Corazonadas              | Benito Taibo  | 9786070736315 | 4.49   | jóvenes   | español |
     | Anansi Boys              | Neil Gaiman   | 9780060515195 | 4.01   | fantasía  | inglés  |
     | American Gods            | Neil Gaiman   | 9780380789030 | 4.11   | fantasía  | inglés  |
      Cuando busque los libros mas populares
      Entonces obtendrá 3 libros de resultado
      Y estos son
      | LIBROS                   |
      | Corazonadas              |
      | American Boys            |
      | Anansi Boys              |
      Y obtiene el mensaje 'Estos son los 3 libros con mejor puntuación.'

@popularidad
Escenario: Busca libros más populares y no hay libros
     Dado un conjunto de libros
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
     
      Cuando busque los libros mas populares
      Entonces obtiene el mensaje 'No existen libros a mostrar.'