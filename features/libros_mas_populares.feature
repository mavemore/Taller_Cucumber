# language: es

Característica: Obtener los libros con más puntuación

  Antecedentes: 
      Dado un conjunto de n libros 
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

  @libros
  Escenario: Busca los libros con mejor puntuación en más de 5 libros
      Dada que el usuario quiere visualizar los libros más populares en 5 libros
      Cuando busque los libros
      Entonces obtendrá 5 libros de resultado(s)
      Y estos son:
      | LIBROS                   |
      | Persona Normal           |
      | Corazonadas              |
      | The Lies of Locke Lamora |
      | It                       |
      | The Humans               |
      Y obtiene el mensaje 'Estos son los 5 libros con mejor puntuación.'

  @libros
  Escenario: Busca los libros con mejor puntuación en menos de 5 libros
      Dada que el usuario quiere visualizar los libros más populares en 4 libros
      Cuando busque los libros
      Entonces obtendrá 4 libros de resultado(s)
      Y estos son:
      | LIBROS                   |
      | Persona Normal           |
      | The Lies of Locke Lamora |
      | It                       |
      | The Humans               |
      Y obtiene el mensaje 'Estos son los 4 libros con mejor puntuación.'

  @libros
  Escenario: Busca los libros con mejor puntuación en 0 libros
      Dada que el usuario quiere visualizar los libros más populares en 0 libros
      Cuando busque los libros
      Entonces obtendrá 0 libros de resultado(s)
      Y obtiene el mensaje: 'No existen libros a mostrar.'
