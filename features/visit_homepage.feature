Feature: Visit homepage
  
  Scenario: When no user is logged in
    Given there is no logged-in user
    When the user visits the site
    Then they should see the login page
    And they should see a link to sign up