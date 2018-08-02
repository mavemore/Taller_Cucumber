# language: es

Característica: Obtener libros más populares

  Antecedentes:
      Dado un conjunto de libros
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

    Escenario: Libros mas populares
      Cuando busque los libros mas populares
      Entonces obtendra 5 libros de resultado
      Y estos libros son
      | LIBROS                   |
      | Persona Normal           |
      | Corazonadas              |
      | The Lies of Locke Lamora |
      | It                       |
      | La Historia Interminable |
      Y obtiene el mensaje de 'Estos son los 5 libros con mejor puntuacion.'

    Escenario: Existen más de 5 libros en el top
        Cuando el usuario busque los libros mas populares entre 5 o más
        Entonces obtendra 5 libros de resultado
        Y estos son 5
        | LIBROS                   |
        | Persona Normal           |
        | Corazonadas              |
        | The Lies of Locke Lamora |
        | It                       |
        | La Historia Interminable |
        Y obtiene el mensaje 1 'Estos son los 5 libros con mejor puntuacion.'

    Escenario: Existen menos de 5 libros en el top
        Cuando el usuario busque los libros más populares entre menos de 5
        Entonces obtendra 5 libros de resultado
        Y estos son menos de 5
        | LIBROS                   |
        | Persona Normal           |
        | Corazonadas              |
        | The Lies of Locke Lamora |
        | It                       |
        Y obtiene el mensaje 2 'Estos son los 4 libros con mejor puntuacion.'

    Escenario: No Existen libros en el top
        Cuando el usuario busque los libros mas populares
        Entonces obtendra 0 libros de resultado
        Y obtiene el mensaje 3 'No existen libros a mostrar.'
