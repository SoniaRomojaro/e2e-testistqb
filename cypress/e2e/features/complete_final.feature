Feature: Complete Final

Scenario: Complete test and final score
When the student is on the ISTQB exam page
When the user select one answer "B. Pruebas de Regresión" on question "1"
When the user select one answer "C. Todos aquellos que puedan tener algún uso para la herramienta" on question "2"
When the user select one answer "B. no deben basarse en nada" on question "3"
When the user select one answer "B. Nadie" on question "4"
When the user select one answer "A. Diseño de Prueba" on question "5"
When the user select one answer "No ha cumplimentado la respuesta" on question "6"
When the user select one answer "A. Son las primeras que se hacen" on question "7"
When the user select one answer "B. Prueba de Aceptación de Usuario" on question "8"
When the user select one answer "B. Son de caja blanca" on question "9"
When the user select one answer "No ha cumplimentado la respuesta" on question "10"       
And the user press Calcular Puntuacion button
Then the user should see the final score message “Su puntuación es 4”

