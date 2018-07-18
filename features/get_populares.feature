# language: es

Característica: Obtener libros por popularidad

  @popularidad
  Escenario: Busca libros por popularidad y hay 5 o mas libros
      Dado un conjunto de libros
     | The Humans               | Matt Haig     | 9780857868787 | 4.08   | scifi     | inglés  |
     | Persona Normal           | Benito Taibo  | 9786070715082 | 4.49   | jóvenes   | español |
     | Corazonadas              | Benito Taibo  | 9786070736315 | 4.49   | jóvenes   | español |
     | Anansi Boys              | Neil Gaiman   | 9780060515195 | 4.01   | fantasía  | inglés  |
     | American Gods            | Neil Gaiman   | 9780380789030 | 4.11   | fantasía  | inglés  |
      Cuando busque los libros mas populares
      Entonces obtendrá 5 libros de resultado
      Y estos son
      | LIBROS                   |
      | Persona Normal           |
      | Corazonadas              |
      | American Gods            |
      | The Humans               |
      | Anansi Boys              |
      Y obtiene el mensaje 'Estos son los 5 libros con mejor puntuacion.'

@popularidad
Escenario: Busca libros por popularidad y hay menos de 5 libros
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
      | American Gods            |
      | Anansi Boys              |
      Y obtiene el mensaje 'Estos son los 3 libros con mejor puntuacion.'

@popularidad
Escenario: Busca libros por popularidad y no hay libros
     Dado un conjunto de libros
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |

      Cuando busque los libros mas populares
      Entonces obtiene el mensaje 'No existen libros a mostrar.'