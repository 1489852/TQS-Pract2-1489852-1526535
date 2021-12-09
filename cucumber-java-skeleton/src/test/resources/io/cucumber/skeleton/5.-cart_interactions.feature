Feature: Tests Cart
  Correct modifications on the cart page



  Scenario: Remove all items
    Given I go to the home page
    When I click by href "//www.megaotaku.com/carrito?action=show"
    And I click by href "https://www.megaotaku.com/carrito?delete=1&id_product=2291&id_product_attribute=0&token=11f51dd84cc2d52a096fe0333f23d2b4"
    And Wait 5000 miliseconds
    And I click by href "https://www.megaotaku.com/carrito?delete=1&id_product=2660&id_product_attribute=0&token=11f51dd84cc2d52a096fe0333f23d2b4"
    And Wait 5000 miliseconds
    Then I should see a "No hay más artículos en su carrito" text

  Scenario: Add 1 Item and increse it to 3 units
    Given I go to the url "https://www.megaotaku.com/yu-gi-oh-pop-up-parade-yami-yugi"
    When I click by class "btn add-to-cart"
    And Wait 5000 miliseconds
    And I click by class "btn btn-secondary"
    And I go to the home page
    And I click by href "//www.megaotaku.com/carrito?action=show"
    And Wait 5000 miliseconds
    And I click by class "btn btn-touchspin js-touchspin bootstrap-touchspin-up"
    And Wait 5000 miliseconds
    And I click by class "btn btn-touchspin js-touchspin bootstrap-touchspin-up"
    And Wait 5000 miliseconds
    Then I should see a "Hay 3 artículos en su carrito." text

  Scenario: Go Shop
    Given I click by href "https://www.megaotaku.com/pedido"
    Then I should see a "Datos Personales" text



