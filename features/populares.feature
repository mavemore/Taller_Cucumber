# language: es

Característica: Obtener libros populares

  Antecedentes: 
      Dado el conjunto de libros
     | NOMBRE                   | AUTOR         | ISBN          | RATING | CATEGORIA | IDIOMA  |
     | The Lies of Locke Lamora | Scott Lynch   | 9780553588941 | 4.30   | fantasía  | inglés  |
     | It                       | Stephen King  | 9781501142970 | 4.21   | horror    | inglés  |
     | The Humans               | Matt Haig     | 9780857868787 | 4.08   | scifi     | inglés  |
     | Persona Normal           | Benito Taibo  | 9786070715082 | 4.50   | jóvenes   | español |
     | Corazonadas              | Benito Taibo  | 9786070736315 | 4.49   | jóvenes   | español |
     | Anansi Boys              | Neil Gaiman   | 9780060515195 | 4.01   | fantasía  | inglés  |
     | American Gods            | Neil Gaiman   | 9780380789030 | 4.11   | fantasía  | inglés  |
     | Stardust                 | Neil Gaiman   | 9780380804559 | 4.08   | fantasía  | inglés  |
     | 1984                     | George Orwell | 9780451524935 | 4.16   | scifi     | inglés  |
     | La Historia Interminable | Michael Ende  | 9789705804809 | 4.18   | fantasía  | español |

  @populares
  Escenario: Busca libros populares con lista mayor a 5
      Dada que la lista de libros es de 10 libros
      Cuando busque los libros populares
      Entonces se obtendrá 5 libros de resultado
      Y estos son los siguientes
      | LIBROS                    |
      | Persona Normal            |
      | Corazonadas               |
      | The Lies of Locke Lamora  |
	  | It                        |
	  | La Historia Interminable  |
      Y se obtiene el mensaje 'Estos son los 5 libros con mejor puntuación.'

  @populares
  Escenario: Busca libros populares con lista menor a 5
      Dada que la lista de libros es de 3 libros
      Cuando busque los libros populares
      Entonces se obtendrá 3 libros de resultado
      Y estos son los siguientes
      | LIBROS                    |
      | The Lies of Locke Lamora  |
	  | It                        |
	  | The Humans                |
      Y se obtiene el mensaje 'Estos son los 3 libros con mejor puntuación.'
	  
	  
  @populares
  Escenario: Busca libros populares sin lista de libros
      Dada que la lista de libros es de 0 libros
      Cuando busque los libros populares
      Entonces se obtendrá 0 libros de resultado
      Y se obtiene el mensaje 'No existen libros a mostrar.'
	  
