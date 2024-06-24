import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";


  When("the user press Corregir button on question {string}", (questionnumber) => {

    cy.get('[data-cy="button-correcta-question'+questionnumber+'"]').click();

  }); 

  Then("the user should see the correct question message {string} on question {string}", (expectedMessage,questionnumber) => {

    cy.get('[data-cy="correctapregunta'+questionnumber+'"]').should('have.text',expectedMessage);

  }); 
  
  