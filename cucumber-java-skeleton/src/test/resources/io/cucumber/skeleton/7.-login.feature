Feature: Tests Contact Information
  Web page navigation



  Scenario: Login correct
    Given I go to the login page
    And Wait 2000 miliseconds
    Then I should see a "Iniciar sesión con su cuenta" text
    When I type "tqsjuju@gmail.com" value in "email" input
    And I type "tqs123456" value in "password" input
    Then I click by class "btn btn-primary form-control-submit"
    Then I should see a "Su cuenta" text

  Scenario: Logout
    Given I go to the login page
    And Wait 2000 miliseconds
    When I click by class "logout-link" li
    Then I should see a "Iniciar sesión con su cuenta" text

  Scenario: Login buit
    Given I go to the login page
    And Wait 2000 miliseconds
    When I type "" value in "email" input
    And I type "" value in "password" input
    Then I should see a "Iniciar sesión con su cuenta" text

  Scenario: Login incorrecte
    Given I go to the login page
    And Wait 2000 miliseconds
    Then I should see a "Iniciar sesión con su cuenta" text
    When I type "tqsjuju@gmail.com" value in "email" input
    And I type "contramal" value in "password" input
    Then I click by class "btn btn-primary form-control-submit"
    Then I should see a "Iniciar sesión con su cuenta" text


