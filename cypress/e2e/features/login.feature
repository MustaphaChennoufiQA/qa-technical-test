Feature: Login

  Scenario: Login
    Given I go to the login URL page
    When I enter valid user credentials
    And I click submit
    Then I should be logged in successfully