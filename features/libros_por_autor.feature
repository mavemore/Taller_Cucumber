# language: es

Característica: Obtener libros por autor

  Antecedentes:
      Dado un conjunto de libros 1
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

  @autor
  Escenario: Busca un autor del cual existen libros: Neil Gaiman
      Dada que el usuario ingresa el autor 'Neil Gaiman'
      Cuando busque los libros por autor
      Entonces obtendrá 3 libros de resultado por autor
      Y estos son
      | LIBROS                   |
      | Anansi Boys              |
      | American Gods            |
      | Stardust                 |
      Y obtiene el mensaje 'Existen 3 libros de este autor.'

  @autor
  Escenario: Busca un autor del cual no existen libros: Patrick Rothfuss
      Dada que el usuario ingresa el autor 'Patrick Rothfuss'
      Cuando busque los libros por autor
      Entonces obtendrá 0 libros de resultado por autor
      Y obtiene el mensaje 'No existen libros para ese autor.'