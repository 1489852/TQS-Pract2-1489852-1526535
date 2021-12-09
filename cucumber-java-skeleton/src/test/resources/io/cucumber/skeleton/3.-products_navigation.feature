Feature: Tests Products
  Correct navigation


  Scenario: Navigation Item 1
    Given I go to the home page
    And Wait 2000 miliseconds
    When I click on "NOVEDADES" button
    And Wait 2000 miliseconds
    And I click by href "https://www.megaotaku.com/dragon-ball-z-ichibansho-vs-omnibus-z-son-goku"
    Then I should see a "Dragon Ball Z Ichibansho VS Omnibus Z SON GOKU" text
    And I should see a "Añadir al carrito" text
    And I should go to the URL "https://www.megaotaku.com/dragon-ball-z-ichibansho-vs-omnibus-z-son-goku"

  Scenario: Navigation Item 2
    Given I go to the home page
    #And Wait 2000 miliseconds
    When I click on "OFERTAS" button
    #And Wait 10000 miliseconds
    And I click by href "https://www.megaotaku.com/one-piece-door-painting-collection-figure-monkey-d-luffy-the-three-musketeers-version"
    #And Wait 2000 miiseconds
    Then I should see a "One Piece Door Painting Collection Figure MONKEY D. LUFFY The Three Musketeers Ver." text
    And I should see a "Añadir al carrito" text
    And I should go to the URL "https://www.megaotaku.com/one-piece-door-painting-collection-figure-monkey-d-luffy-the-three-musketeers-version"


  Scenario: Navigation Item 3
    Given I go to the home page
    When I click by div "left-nav-icon d-flex align-items-center justify-content-center"
    And Wait 2000 miliseconds
    And I click on "ONE PIECE" button
    And Wait 2000 miliseconds
    And I click by href "https://www.megaotaku.com/one-piece-grandline-journey-portgas-d-ace"
    Then I should see a "One Piece Grandline Journey PORTGAS D. ACE" text
    And I should see a "Reserva con pago completo" text
    And I should go to the URL "https://www.megaotaku.com/one-piece-grandline-journey-portgas-d-ace"
