Feature: Login

  @login
  Scenario: Login with valid credentials
    Given I navigate to home page
    Then I click on login button
    And I type "TestCaliforniaUS6868" as a login
    And I type "California2023!" as a password
    Then I click on Signin button
    And I should be signed-in as a user "Efim"