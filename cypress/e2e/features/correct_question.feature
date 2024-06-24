Feature: Correct a question


Scenario: Select an answer
Given the student is on the ISTQB exam page
When the user select answer <selectedAnswer> on question <questionNumber>
And the user press Corregir button on question <questionNumber>
Then the user should see the correct question message <expectedMessage> on question <questionNumber>


Examples:
 |questionNumber     | selectedAnswer                                        | expectedMessage |
 |"1"                | "B. Pruebas de Regresión"                             | "Respuesta Correcta. Su puntuación es: 2" |
 |"1"                | "A. No se recomienda hacer pruebas en esta situación" | "Respuesta Incorrecta. Su puntuación es: -1"|
 |"1"                | "No ha cumplimentado la respuesta"                    | "No ha cumplimentado su respuesta. Su puntuación es: 0"|

