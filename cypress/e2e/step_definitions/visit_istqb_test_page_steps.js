import {
  Given,
  When,
  Then,
} from "@badeball/cypress-cucumber-preprocessor";



Given("the student is on the ISTQB exam page", () => {
    cy.visit("/");
});


  When("the student click on welcome menu", () => {
    cy.get('[data-cy="menu-welcome"]').click();
});

Then("the istqb test page url should include welcome", () => {
   cy.url().should('includes','#welcome');
 });

Then("the istqb test page title should be equal to ISTQB ONLINE TEST", () => {
    cy.title().should('includes','ISTQB');
 });

 Then("the istqb menu should have 3 elements", () => {
    cy.get('[data-cy*="menu-"]').should('have.length',3);
});

Then("the istqb page should have header title ISTQB Online Test", () => {
    cy.contains("ISTQB Online Test").should('be.visible');
    cy.contains("ISTQB Online Test").should('have.text', 'ISTQB Online Test');
    cy.contains("ISTQB Online Test").should('include.text', 'ISTQB');
    cy.contains("ISTQB Online Test").should('not.contain', 'Bootcamp');
});