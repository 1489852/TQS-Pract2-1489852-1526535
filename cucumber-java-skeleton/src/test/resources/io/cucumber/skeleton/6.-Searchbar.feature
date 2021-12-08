Feature: Tests Contact Information
  Web page navigation


  Scenario: Searchbar find click
    Given I go to the home page
    Then I type "Luffy" value in "form-control ui-autocomplete-input" searchbar
    And Wait 5000 miliseconds
    And I click by class "btn-primary"
    Then I should see a "One Piece Figuarts ZERO MONKEY D. LUFFY (LUFFYTARO)" text

  Scenario: Searchbar item click
    Given I go to the home page
    Then I type "Luffy" value in "form-control ui-autocomplete-input" searchbar
    And Wait 5000 miliseconds
    And I click by AId "ui-id-32"
    Then I go to the url "https://www.megaotaku.com/one-piece-figuarts-zero-monkey-d-luffy-luffytaro"

  Scenario: Empty Searchbar
    Given I go to the home page
    Then I type "" value in "form-control ui-autocomplete-input" searchbar
    And Wait 5000 miliseconds
    And I click by class "btn-primary"
    Then I should see a "Lamentamos las molestias." text



