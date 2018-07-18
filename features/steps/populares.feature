# language: es

Característica: Obtener libros populares
 
  Escenario: Existen mas de 5 libros: 6
      Dada una lista de libros
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
     | The Lies of Locke Lamora | Scott Lynch   | 9780553588941 | 4.30   | fantasía  | inglés  |
     | It                       | Stephen King  | 9781501142970 | 4.21   | horror    | inglés  |
     | The Humans               | Matt Haig     | 9780857868787 | 4.08   | scifi     | inglés  |
     | Persona Normal           | Benito Taibo  | 9786070715082 | 4.49   | jóvenes   | español |
     | Corazonadas              | Benito Taibo  | 9786070736315 | 4.49   | jóvenes   | español |
     | Anansi Boys              | Neil Gaiman   | 9780060515195 | 4.01   | fantasía  | inglés  |
      Cuando busque los libros populares
      Entonces obtendrá 5 libros
      Y estos libros son
      | LIBROS                   |
      | Persona Normal           |
      | Corazonadas              |
      | The Lies of Locke Lamora |
      | It                       |
      | The Humans               |
      Y obtiene un mensaje: 'Estos son los 5 libros con mejor puntuación.'

    Escenario: Existen 5 libros: 5
      Dada una lista de libros
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
     | The Lies of Locke Lamora | Scott Lynch   | 9780553588941 | 4.30   | fantasía  | inglés  |
     | It                       | Stephen King  | 9781501142970 | 4.21   | horror    | inglés  |
     | The Humans               | Matt Haig     | 9780857868787 | 4.08   | scifi     | inglés  |
     | Persona Normal           | Benito Taibo  | 9786070715082 | 4.49   | jóvenes   | español |
     | Corazonadas              | Benito Taibo  | 9786070736315 | 4.49   | jóvenes   | español |
      Cuando busque los libros populares
      Entonces obtendrá 5 libros
      Y estos libros son
      | LIBROS                   |
      | Persona Normal           |
      | Corazonadas              |
      | The Lies of Locke Lamora |
      | It                       |
      | The Humans               |
      Y obtiene un mensaje: 'Estos son los 5 libros con mejor puntuación.'
  
  Escenario: Existen menos de 5 libros: 3
      Dada una lista de libros
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
     | The Lies of Locke Lamora | Scott Lynch   | 9780553588941 | 4.30   | fantasía  | inglés  |
     | It                       | Stephen King  | 9781501142970 | 4.21   | horror    | inglés  |
     | The Humans               | Matt Haig     | 9780857868787 | 4.08   | scifi     | inglés  |
      Cuando busque los libros populares
      Entonces obtendrá 3 libros
      Y estos libros son
      | LIBROS                   |
      | The Lies of Locke Lamora |
      | It                       |
      | The Humans               |
      Y obtiene un mensaje: 'Estos son los 3 libros con mejor puntuación.'

  Escenario: No existen libros: 0
      Dada una lista de libros
      | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
      Cuando busque los libros populares
      Entonces obtendrá 0 libros
      Y obtiene un mensaje: 'No existen libros a mostrar.'