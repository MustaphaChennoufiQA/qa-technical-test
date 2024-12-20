import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';

// Scenario: Verify login with valid credentials
Given('I am on the login page', () => {
    cy.visit("/");
    cy.url().should('eq', 'https://www.saucedemo.com/');
    cy.title().should('eq', 'Swag Labs');
});

When('I enter valid username and password', () => {
    cy.fixture("userDetails.json").then((user) => {
        cy.get("#user-name").type(user.username);
        cy.get("#password").type(user.password);
    });
});

When('I click the login button', () => {
    cy.get("#login-button").click();
});

Then('I should be logged in successfully', () => {
    cy.url().should('include', '/inventory.html');
    cy.get(".inventory_list").should("be.visible");
});

// Scenario: Verify login with invalid username and invalid password
When('I enter invalid username and invalid password', () => {
    cy.fixture("userDetails.json").then((user) => {
        cy.get("#user-name").type(user.invalidUsername);
        cy.get("#password").type(user.invalidPassword);
    });
});

Then('I should see an error message', () => {
    cy.get("h3[data-test='error']").should("be.visible")
        .and('contain.text', 'Epic sadface: Username and password do not match any user in this service');
});

// Scenario: Verify all items are displayed on the items page
Given('I am logged in', () => {
    cy.fixture("userDetails.json").then((user) => {
        cy.login(user.username, user.password);
    });
});

When('I navigate to the items page', () => {
    cy.get(".inventory_list").should("be.visible");
});

Then('I should see all items displayed', () => {
    cy.get(".inventory_item").should("have.length", 6);
});

// Scenario: Verify the item detail page displays correct information
When('I am on the items page and I click on an item', () => {
    cy.xpath("//div[normalize-space()='Sauce Labs Backpack']").click()
});

Then('I should see the item detail page with correct information', () => {
    cy.fixture("itemDetails.json").then((item) => {
        cy.url().should('include', `/inventory-item.html?id=1`);
        cy.get(".inventory_details_name.large_size").should("be.visible")
            .and("contain.text", item.name);
        cy.get(".inventory_details_desc").should("be.visible")
            .and("contain.text", item.description);
        cy.get(".inventory_details_price").should("be.visible")
            .and("contain.text", item.price);
        cy.get(".inventory_details_img").should("be.visible");
    });
});

// Scenario: Verify adding a product to the cart from the items page
When('I am on the items page and I add a product to the cart', () => {
    cy.get("#add-to-cart-sauce-labs-backpack").click();
    cy.get("#remove-sauce-labs-backpack").should("be.visible").and("contain.text", "Remove");
});

Then('the product should be added to the cart', () => {
    cy.get(".shopping_cart_link").click();
    cy.url().should('include', '/cart.html');
    cy.get(".inventory_item_name").should("be.visible").and("contain.text", "Sauce Labs Backpack");
});

// Scenario: Verify item quantity, description and price in the cart
When('I have product in the cart', () => {
    cy.get(".shopping_cart_badge").should("be.visible").and("contain.text", "1");
});

When('I view the cart', () => {
    cy.get(".shopping_cart_link").click();
    cy.get(".cart_list").should("exist"); 
});

Then('I should see the correct item quantity, description and price', () => {
    cy.fixture("itemDetails.json").then((item) => {
        cy.get('[data-test="inventory-item-name"]').should("be.visible")
            .and("contain.text", item.name);
        cy.get('[data-test="inventory-item-desc"]').should("be.visible")
            .and("contain.text", item.description);
        cy.get('[data-test="inventory-item-price"]').should("be.visible")
            .and("contain.text", item.price);
    });
});

// Scenario: Verify adding user information during checkout
Given('I am on the checkout page', () => {

});

When('I enter user information', () => {

});

When('I click the continue button', () => {

});

Then('I should be redirected to the checkout overview page', () => {

});

// Scenario: Verify payment and shipping information during checkout
Given('I am on the checkout overview page', () => {

});

Then('the payment information should be generated', () => {

});

Then('the shipping information should be displayed', () => {

});

// Scenario: Verify total price calculation during checkout
When('I review the total price', () => {

});

Then('the total price should be calculated correctly', () => {

});

// Scenario: Verify completing the checkout process
When('I click the finish button', () => {

});

Then('the order should be dispatched successfully', () => {

});

// Scenario: Verify back home after completing checkout
Given('I have completed the checkout process', () => {

});

When('I click the "Back Home" button', () => {

});

Then('I should be redirected to the home page', () => {

});

// Scenario: Verify logout
When('I click the logout button', () => {

});

Then('I should be logged out successfully', () => {

});