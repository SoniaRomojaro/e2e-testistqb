Feature: Complete Final

  Scenario: Complete test and final score with ranking
    Given the student is on the ISTQB exam page
    When the student enters the name "Clara"
    And press start button
    When the user answer questions:
      | questionNumber | selectedAnswer                                                   |
      |1               | B. Pruebas de Regresión                                          |
      |2               | B. Todos aquellos que puedan tener algún uso para la herramienta |
      |3               | A. Requerimientos                                                |
      |4               | A. Analista funcional                                            |
      |5               | A. Diseño de Prueba                                              |
      |6               | C. Calculos incorrectos                                          |
      |7               | C. Validan que el sistema esté completo                          |
      |8               | B. Prueba de Aceptación de Usuario                               |
      |9               | A. Evaluan las funciones que el sistema debe realizar            |
      |10              | A.Se basan en la estructura interna del sistema                |
    When the user press Calcular Puntuacion button
    When the user click on Ver Ranking button
    
    When the student enters the name "Paco"
    And press start button
    When the user answer questions:
      | questionNumber | selectedAnswer                   |
      |              1 | No ha cumplimentado la respuesta |
      |              2 | No ha cumplimentado la respuesta |
      |              3 | No ha cumplimentado la respuesta |
      |              4 | No ha cumplimentado la respuesta |
      |              5 | No ha cumplimentado la respuesta |
      |              6 | No ha cumplimentado la respuesta |
      |              7 | No ha cumplimentado la respuesta |
      |              8 | No ha cumplimentado la respuesta |
      |              9 | No ha cumplimentado la respuesta |
      |             10 | No ha cumplimentado la respuesta |
   
    When the user press Calcular Puntuacion button
    When the user click on Ver Ranking button

    When the student enters the name "Ana"
    And press start button
    When the user answer questions:
      | questionNumber | selectedAnswer                   |
      |              1 | C. Pruebas Unitarias |
      |              2 | C. Los gerentes para determinar en qué proyectos debería usarse |
      |              3 | B. no deben basarse en nada |
      |              4 | B. Nadie |
      |              5 | B. No hay tareas específicas |
      |              6 | B. Ninguno |
      |              7 | B. Las hace el equipo de desarrollo |
      |              8 | C. Caja negra |
      |              9 | B. Son de caja blanca |
      |             10 | B. Son las de caja negra |
    When the user press Calcular Puntuacion button
    When the user click on Ver Ranking button
    Then the user should see order message "Nombre: Clara Puntuación: 20 Nombre: Paco Puntuación: 0 Nombre: Ana Puntuación: -10"