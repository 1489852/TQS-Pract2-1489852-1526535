Feature: Test Home page
  Correct navigation


  Scenario: Avoid cookies
    Given I go to the home page
    When I click by class "cookiesplus-btn cookiesplus-accept float-xs-right"
    And Wait 5000 miliseconds

  Scenario: Home Cart
    Given I go to the home page
    And Wait 2000 miliseconds
    When I click by href "//www.megaotaku.com/carrito?action=show"
    And Wait 2000 miliseconds
    Then I should go to the URL "https://www.megaotaku.com/carrito?action=show"

  Scenario: Home My account
    Given I go to the home page
    And Wait 2000 miliseconds
    When I click by class "customer-signin-module" div
    And Wait 2000 miliseconds
    Then I should go to the URL "https://www.megaotaku.com/iniciar-sesion?back=my-account"

  Scenario: Home Page Logo
    Given I go to the url "https://www.megaotaku.com/one-piece"
    And Wait 2000 miliseconds
    When I click by href "https://www.megaotaku.com/"
    And Wait 2000 miliseconds
    Then I should go to the URL "https://www.megaotaku.com/"


