Feature: Tests Add
  Correct Items add to the cart


  Scenario: Cart Empty
    Given I go to the home page
    When I click by href "//www.megaotaku.com/carrito?action=show"
    Then I should see a "No hay más artículos en su carrito" text

  Scenario: Correct Add 1 Item To Cart
    Given I go to the url "https://www.megaotaku.com/yu-gi-oh-pop-up-parade-yami-yugi"
    When I click by class "btn add-to-cart"
    And Wait 5000 miliseconds
    And I click by class "btn btn-secondary"
    And I go to the home page
    And Wait 2000 miliseconds
    And I click by href "//www.megaotaku.com/carrito?action=show"
    And Wait 5000 miliseconds
    Then I should see a "Yu-Gi-Oh! Pop Up Parade YAMI YUGI" text
    Then I should see a "Hay 1 artículo en su carrito." text

  Scenario: Correct Add 2 Item To Cart
    Given I go to the url "https://www.megaotaku.com/one-piece-banpresto-world-figure-colosseum-3-super-master-stars-piece-the-portgas-d-ace-two-dimensions"
    When I click by class "btn btn-touchspin js-touchspin bootstrap-touchspin-up"
    And I click by class "btn add-to-cart"
    And Wait 5000 miliseconds
    And I click by class "btn btn-secondary"
    And I go to the home page
    And I click by href "//www.megaotaku.com/carrito?action=show"
    And Wait 5000 miliseconds
    Then I should see a "One Piece Banpresto World Figure Colosseum 3 Super Master Stars Piece The PORTGAS D. ACE (Two Dimensions)" text
    Then I should see a "Hay 3 artículos en su carrito." text



