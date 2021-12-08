Feature: Tests Contact Information
  Web page navigation


  Scenario: Test correct
    Given I go to the url "https://checkout.bigcartel.com/1747798/M3KQ4831BWXI7AH5ZJR6OCE21/contact"
    Then I should see a "Contact Information" text
    When I type "Sergi" value in "buyer_first_name" input
    And I type "Diaz" value in "buyer_last_name" input
    And I type "sergi@gmail.com" value in "buyer_email" input
    And I type "608123456" value in "buyer_phone_number input
    And I click on "Next" button
    Then I should see a "Edit" button


  Scenario: Test empty
    Given I go to the url "https://checkout.bigcartel.com/1747798/M3KQ4831BWXI7AH5ZJR6OCE21/contact"
    Then I should see a "Contact Information" text


  Scenario: Test wrong email
    Given I go to the url "https://checkout.bigcartel.com/1747798/M3KQ4831BWXI7AH5ZJR6OCE21/contact"
    Then I should see a "Contact Information" text


