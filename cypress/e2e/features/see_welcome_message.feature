Feature: Welcome the student

Scenario: Enter a name with less than 10 characters

Given the student is on the ISTQB exam page
When the student enters the name "Pepe Sanz"
And press start button
Then the student should see the message "Bienvenido/a a su examen: Pepe Sanz. Por favor, complete las preguntas. Dispone de 60 minutos."


Scenario: Enter an emtpy name

Given the student is on the ISTQB exam page
Then the student should see the error message "El campo texto es obligatorio y debe máximo 10 caracteres"
