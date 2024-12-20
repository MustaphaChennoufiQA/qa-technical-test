Feature:  Saucedemo E-commerce Shopping Workflow

    Scenario: Verify login with valid credentials
        Given I am on the login page
        When I enter valid username and password
        And I click the login button
        Then I should be logged in successfully

    Scenario: Verify all items are displayed on the items page
        Given I am logged in
        When I navigate to the items page
        Then I should see all items displayed

    Scenario: Verify the item detail page displays correct information
        Given I am logged in
        When I am on the items page and I click on an item
        Then I should see the item detail page with correct information

    Scenario: Verify adding a product to the cart from the items page
        Given I am logged in
        When I am on the items page and I add a product to the cart
        Then the product should be added to the cart

    Scenario: Verify item quantity, description and price in the cart
        Given I am logged in
        When I am on the items page and I add a product to the cart
        And I have product in the cart
        And I view the cart
        Then I should see the correct item quantity, description and price

    Scenario: Verify adding user information during checkout
        Given I am on the checkout page
        When I enter user information
        And I click the continue button
        Then I should be redirected to the checkout overview page

    Scenario: Verify payment and shipping information during checkout
        Given I am on the checkout overview page
        Then the payment information should be generated
        And the shipping information should be displayed

    Scenario: Verify total price calculation during checkout
        Given I am on the checkout page
        When I review the total price
        Then the total price should be calculated correctly

    Scenario: Verify completing the checkout process
        Given I am on the checkout page
        When I click the finish button
        Then the order should be dispatched successfully

    Scenario: Verify back home after completing checkout
        Given I have completed the checkout process
        When I click the "Back Home" button
        Then I should be redirected to the home page

    Scenario: Verify logout
        Given I am logged in
        When I click the logout button
        Then I should be logged out successfully

    Scenario: Verify login with invalid username and invalid password
        Given I am on the login page
        When I enter invalid username and invalid password
        And I click the login button
        Then I should see an error message