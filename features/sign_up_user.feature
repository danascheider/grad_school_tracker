Feature: Sign up user
  
  @javascript
  Scenario: Successful registration
    Given there are no users in the system
    When the user registers with their e-mail and password
    Then there should be 1 user in the system
    And the user should be signed in