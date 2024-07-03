import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";


  When('the user answer questions:', (dataTable) => {
  dataTable.hashes().forEach(element => {
    cy.get('[data-cy="question'+element.questionNumber+'"]').select(element.selectedAnswer);

  }); 

}); 
  
  When("the user press Calcular Puntuacion button" , () => {

    cy.get('[data-cy="button-calcularpuntuacion"]').click();

 }); 


Then("the user should see the final score message {string}", (expectedMessage) => {

  cy.get('[data-cy="puntuacionfinal"]').should('have.text',expectedMessage);

}); 



