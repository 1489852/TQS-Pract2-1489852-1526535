Feature: Search bar navigation
  Web page navigation

  Scenario: Searchbar find click
    Given I go to the home page
    Then I type "Luffy" value in "form-control ui-autocomplete-input" searchbar
    And Wait 5000 miliseconds
    And I click by class "btn-primary"
    Then I should see a "One Piece Figuarts ZERO MONKEY D. LUFFY (LUFFYTARO)" text

  Scenario: Searchbar item list
    Given I go to the home page
    Then I type "Luffy" value in "form-control ui-autocomplete-input" searchbar
    And Wait 1000 miliseconds
    And I should see a "One Piece Ichibansho" text

  Scenario: Empty Searchbar
    Given I go to the home page
    Then I type "" value in "form-control ui-autocomplete-input" searchbar
    And Wait 5000 miliseconds
    And I click by class "btn-primary"
    Then I should see a "Lamentamos las molestias." text


