Feature: Answer a question

Scenario: Select a valid answer
Given the student is on the ISTQB exam page
When the user select answer "B. Pruebas de Regresión" on question "1"
And the user press Mostrar respuesta button on question "1"
Then the user should see the answer question message "Respuesta Correcta: B. Pruebas de Regresión" on question "1"