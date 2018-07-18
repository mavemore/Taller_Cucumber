# language: es

Característica: Obtener libros populares

  Antecedentes:
      Dada una lista de libros
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
     | The Lies of Locke Lamora | Scott Lynch   | 9780553588941 | 4.30   | fantasía  | inglés  |
     | It                       | Stephen King  | 9781501142970 | 4.21   | horror    | inglés  |
     | The Humans               | Matt Haig     | 9780857868787 | 4.08   | scifi     | inglés  |
     | Persona Normal           | Benito Taibo  | 9786070715082 | 4.49   | jóvenes   | español |
     | Corazonadas              | Benito Taibo  | 9786070736315 | 4.49   | jóvenes   | español |
     | Anansi Boys              | Neil Gaiman   | 9780060515195 | 4.01   | fantasía  | inglés  |
     | American Gods            | Neil Gaiman   | 9780380789030 | 4.11   | fantasía  | inglés  |
     | Stardust                 | Neil Gaiman   | 9780380804559 | 4.08   | fantasía  | inglés  |
     | 1984                     | George Orwell | 9780451524935 | 4.16   | scifi     | inglés  |
     | La Historia Interminable | Michael Ende  | 9789705804809 | 4.18   | fantasía  | español |

  @populares
  Escenario: Busca los 5 libros más populares de una lista de 10 libros
      Cuando busque los libros más populares
      Entonces obtendrán 5 libros de resultado
      Y son
      | LIBROS                   |
      | Persona Normal           |
      | Corazonadas              |
      | The Lies of Locke Lamora |
      | It                       |
      | La Historia Interminable |
      Y muestra el mensaje 'Estos son los 5 libros con mejor puntuación.'

@populares
  Escenario: Busca los libros más populares de una lista de 6 libros
      Dada una lista de 6 libros
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
     | It                       | Stephen King  | 9781501142970 | 4.21   | horror    | inglés  |
     | Anansi Boys              | Neil Gaiman   | 9780060515195 | 4.01   | fantasía  | inglés  |
      Cuando busque los libros más populares
      Entonces obtendrán 2 libros de resultado
      Y muestra el mensaje 'Estos son los 2 libros con mejor puntuación.'

  @populares
  Escenario: Busca los 5 libros más populares pero no existen libros
      Dada una lista de 0 libros
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
      Cuando busque los libros más populares
      Entonces obtendrán 0 libros de resultado
      Y muestra el mensaje 'No existen libros a mostrar.'