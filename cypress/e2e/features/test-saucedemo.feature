Feature:  Saucedemo E-commerce Shopping Workflow

    Scenario: Verify login with valid credentials
        Given I am on the login page
        When I enter valid username and password
        And I click the login button
        Then I should be logged in successfully

    Scenario: Verify login with invalid username and valid password
        Given I am on the login page
        When I enter an invalid username and a valid password
        And I click the login button
        Then I should see an error message

    Scenario: Verify login with valid username and invalid password
        Given I am on the login page
        When I enter a valid username and an invalid password
        And I click the login button
        Then I should see an error message

    Scenario: Verify logout
        Given I am logged in
        When I click the logout button
        Then I should be logged out successfully

    Scenario: Verify the "About" section redirects to the SauceLabs site
        Given I am logged in
        When I click on the "About" section
        Then I should be redirected to the SauceLabs site

    Scenario: Verify all items are displayed on the items page
        Given I am logged in
        When I navigate to the items page
        Then I should see all items displayed

    Scenario: Verify sorting items by name (A to Z)
        Given I am on the items page
        When I sort items by name A to Z
        Then items should be sorted by name in ascending order

    Scenario: Verify sorting items by name (Z to A)
        Given I am on the items page
        When I sort items by name Z to A
        Then items should be sorted by name in descending order

    Scenario: Verify sorting items by price (low to high)
        Given I am on the items page
        When I sort items by price low to high
        Then items should be sorted by price in ascending order

    Scenario: Verify sorting items by price (high to low)
        Given I am on the items page
        When I sort items by price high to low
        Then items should be sorted by price in descending order

    Scenario: Verify the item detail page displays correct information
        Given I am on the items page
        When I click on an item
        Then I should see the item detail page with correct information

    Scenario: Verify adding a product to the cart from the items page
        Given I am on the items page
        When I add a product to the cart
        Then the product should be added to the cart

    Scenario: Verify adding multiple products to the cart
        Given I am on the items page
        When I add multiple products to the cart
        Then all selected products should be added to the cart
        
    Scenario: Verify adding a product to the cart from the item details page
        Given I am on the item details page
        When I add the product to the cart
        Then the product should be added to the cart

    Scenario: Verify removing a product from the cart on the items page
        Given I have a product in the cart
        When I remove the product from the cart on the items page
        Then the product should be removed from the cart

    Scenario: Verify removing a product from the cart on the cart page
        Given I have a product in the cart
        When I remove the product from the cart on the cart page
        Then the product should be removed from the cart

    Scenario: Verify removing a product from the cart on the item details page
        Given I have a product in the cart
        When I remove the product from the cart on the item details page
        Then the product should be removed from the cart


    Scenario: Verify item quantity, description and price in the cart
        Given I have products in the cart
        When I view the cart
        Then I should see the correct item quantity, description and price

    Scenario: Verify the "Continue Shopping" functionality
        Given I am on the cart page
        When I click the "Continue Shopping" button
        Then I should be redirected to the items page

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

    Scenario: Verify canceling the checkout process
        Given I am on the checkout page
        When I click the cancel button
        Then the checkout process should be canceled

    Scenario: Verify completing the checkout process
        Given I am on the checkout page
        When I click the finish button
        Then the order should be dispatched successfully

    Scenario: Verify back home after completing checkout
        Given I have completed the checkout process
        When I click the "Back Home" button
        Then I should be redirected to the home page

    Scenario: Verify footer social media links: Twitter, Facebook, LinkedIn
        Given I am on any page
        When I click on the Twitter link
        Then I should be redirected to the Twitter page
        When I click on the Facebook link
        Then I should be redirected to the Facebook page
        When I click on the LinkedIn link
        Then I should be redirected to the LinkedIn page

    Scenario: Verify UI responsiveness of the inventory container on the items page
        Given I am on the items page
        When I resize the browser window
        Then the inventory container should adjust its layout accordingly

    Scenario: Verify duplicate page in browser
        Given I am on the website and logged in
        When I try to duplicate the page in the browser
        Then I should be logged out
        And I should see an error message

    Scenario: Verify login with locked_out_user
        Given I am on the login page
        When I enter locked_out_user username and valid password
        And I click the login button
        Then I should see an error message

    Scenario: Verify login with problem_user
        Given I am on the login page
        When I enter problem_user username and valid password
        And I click the login button
        Then I should be logged in successfully
        And I should see wrong items displayed

    Scenario: Verify login with problem_user
        Given I am on the login page
        When I enter problem_user username and valid password
        And I click the login button
        Then I should be logged in successfully
        And I should experience issues with UI interactions

    Scenario: Verify login with performance_glitch_user
        Given I am on the login page
        When I enter performance_glitch_user username and valid password
        And I click the login button
        Then I should experience performance glitches when logged in

    Scenario: Verify login with error_user
        Given I am on the login page
        When I enter error_user username and valid password
        And I click the login button
        Then I should be logged in successfully
        And I should experience issues with adding some items to the cart

    Scenario: Verify login with visual_user
        Given I am on the login page
        When I enter visual_user username and valid password
        And I click the login button
        Then I should be logged in successfully
        And I should see visual issues in the UI elements