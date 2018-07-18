# language: es

Característica: Obtener libros por ISBN

  Antecedentes: 
      Dado un conjunto de libros populares
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
  Escenario: Busca un top 5 de los libros más populares
      Dado que el usuario tiene 10 libros
      Cuando busque los libros más populares
      Entonces obtendrá 5 libros populares
      Y estos son los
      | LIBROS                   |
      | Persona Normal           |
      | Corazonadas              |
      | The Lies of Locke Lamora |
      | It                       |
      | La Historia Interminable |
      Y obtiene el mensaje popular 'Estos son los 5 libros con mejor puntuación.'

  @autor
    Escenario: Busca un top 5 de los libros más populares pero hay 4 libros
        Dado que el usuario tiene 4 libros
        Cuando busque los libros más populares
        Entonces obtendrá 4 libros populares
        Y estos son los
        | LIBROS                   |
        | Persona Normal           |
        | The Lies of Locke Lamora |
        | It                       |
        | The Humans               |
        Y obtiene el mensaje 'Estos son los 4 libros con mejor puntuación.'

    @autor
    Escenario: Busca un top de 5 de los libros más populares. Pero no hay libros
        Dado que el usuario tiene 0 libros
        Cuando busque los libros más populares
        Entonces obtendrá 0 libros populares
        Y obtiene el mensaje 'No existen libros a mostrar.'
