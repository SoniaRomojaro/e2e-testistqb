Feature: Complete Final

Scenario: Complete test and final score
Given the student is on the ISTQB exam page
When the user answer questions:

|questionNumber     | selectedAnswer                                                  |                             
|1                  | B. Pruebas de Regresión                                         |  
|2                  | B. Todos aquellos que puedan tener algún uso para la herramienta| 
|3                  | B. no deben basarse en nada                                     | 
|4                  | B. Nadie                                                        | 
|5                  | A. Diseño de Prueba                                             | 
|6                  | No ha cumplimentado la respuesta                                | 
|7                  | A. Son las primeras que se hacen                                | 
|8                  | B. Prueba de Aceptación de Usuario                              | 
|9                  | B. Son de caja blanca                                           | 
|10                 | No ha cumplimentado la respuesta                                | 
When the user press Calcular Puntuacion button
Then the user should see the final score message "Su puntuación es 4"

