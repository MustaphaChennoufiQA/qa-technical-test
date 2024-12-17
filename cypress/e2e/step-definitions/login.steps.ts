import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import LoginPage from '../../pages/LoginPage';

const loginPage = new LoginPage()

Given('I go to the login URL page', () => {
    loginPage.openLoginPage()
});

When('I enter valid user credentials', () => {
    cy.fixture("userCredentials").then((user) => {
        loginPage.enterUserCredentials(user.email, user.password)
    })
});

When('I click submit', () => {
    loginPage.clickSubmit()
});

Then('I should be logged in successfully', () => {
    loginPage.assertLoginSuccess()
});