Feature: Tests Submenu
  Correct navigation

  Scenario: Submenu Men Navigation
    Given I go to the home page
    When I click on "NOVEDADES" button
    And Wait 3000 miliseconds
    Then I should see a "Descubre las últimas novedades en figuras de importación basadas en el manga y anime japonés, los videojuegos y el cómic: Dragon Ball, One Piece, Naruto, Kimetsu no Yaiba, My Hero Academia, superhéroes..." text
    And Wait 2000 miliseconds
    And I should go to the URL "https://www.megaotaku.com/novedades"

  Scenario: Submenu Sale Navigation
    Given I go to the home page
    And Wait 3000 miliseconds
    When I click on "OFERTAS" button
    And Wait 2000 miliseconds
    Then I should see a "¡Descubre nuestras ofertas en figuras japonesas de importación basadas en el manga y anime japonés, los videojuegos y el cómic!" text
    And I should go to the URL "https://www.megaotaku.com/ofertas"

  Scenario: Submenu Women Navigation
    Given I go to the home page
    And Wait 3000 miliseconds
    When I click on "RESERVAS" button
    And Wait 2000 miliseconds
    Then I should see a "Reserva de figuras en MegaOtaku: adelántate y asegúrate tus figuras japonesas desde el momento en que son anunciadas." text
    And I should go to the URL "https://www.megaotaku.com/reservas"
