import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";


  Given("the user select one answer {string} on question {string}", (selectedAnswer,questionnumber) => {

    cy.get('[data-cy="question'+questionnumber+'"]').select(selectedAnswer);

  }); 

  

  When("the user press Calcular Puntuacion button" , () => {

    cy.get('[data-cy="button-calcularpuntuacion"]').click();

 }); 


Then("the user should see the final score message {string}", (expectedMessage) => {

  cy.get('[data-cy="puntuacionfinal"]').should('have.text',expectedMessage);

}); 



