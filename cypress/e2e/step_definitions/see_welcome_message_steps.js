import {
  Given,
  When,
  Then,
} from "@badeball/cypress-cucumber-preprocessor";

When("the student enters the name {string}", (name) => {
 
  cy.get('[data-cy="input-welcome-name"]').clear();
  cy.get('[data-cy="input-welcome-name"]').type(name);
  
});

When("press start button", () => {
  cy.get('[data-cy="button-start"]').click();
}); 

Then("the student should see the message {string}", (welcomeMessage) => {
  cy.get('[data-cy="welcome-message"]').should('have.text', welcomeMessage);
}); 

Then("the student should see the error message {string}", (welcomeerrorMessage) => {
  cy.get('[data-cy="error-welcome-message"]').should('have.text', welcomeerrorMessage);
}); 
