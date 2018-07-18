# language: es

Característica: Obtener libros populares

  Antecedentes: 
      Dado un conjunto de 10 libros
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
  Escenario: Busca el top5 libros con mayor popularidad
      Cuando busque los libros por popularidad
      Entonces obtendrá 5 libros con mejor rating
      Y este es el top
      | LIBROS                   |
      | Persona Normal           |
      | Corazonadas              |
      | The Lies of Locke Lamora |
      | It                       |
      | La Historia Interminable |
      Y regresa el mensaje 'Estos son los 5 libros con mejor puntuación.'

  @populares
  Escenario: Busca el top libros entre 3 libros
      Dado un conjunto de 3 libro(s)
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
     | The Lies of Locke Lamora | Scott Lynch   | 9780553588941 | 4.30   | fantasía  | inglés  |
     | It                       | Stephen King  | 9781501142970 | 4.21   | horror    | inglés  |
     | The Humans               | Matt Haig     | 9780857868787 | 4.08   | scifi     | inglés  |
      Cuando busque los libros por popularidad
      Entonces obtendrá 3 libros con mejor rating
      Y este es el top
      | LIBROS                   |
      | The Lies of Locke Lamora |
      | It                       |
      | The Humans |
      Y regresa el mensaje 'Estos son los 3 libros con mejor puntuación.'


  @populares
  Escenario: Busca el top libros pero no hay libros
      Dado un conjunto de 0 libro(s)
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
      Cuando busque los libros por popularidad
      Entonces obtendrá 0 libros con mejor rating
      Y este es el top
      | LIBROS                   |
      Y regresa el mensaje 'No existen libros a mostrar.'


