import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";






  When("the user click on Ver Ranking button" , () => {

    cy.get('[data-cy="button-ranking"]').click();

  }); 


  Then("the user should see order message {string}", (expectedMessage) => {

      cy.get('[data-cy="mensajefinal"]').should('contain.text',expectedMessage);
    

 }); 






  