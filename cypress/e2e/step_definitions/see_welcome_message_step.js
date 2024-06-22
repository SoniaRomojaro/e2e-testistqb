import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
  
  When("the student enters the name {string}", (name) => {

   cy.get('[data-cy="input-welcome-name"]').type(name);


});