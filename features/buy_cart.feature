Feature: Buy cart
  In order to sell some glass
  As a customer
  I want to be able to browse products and add them to cart and checkout

  Background:
    Given a product named "Verre d'eau" costing "20" euros
    And a product named "Verre de terre" costing "30" euros

  Scenario:
    Given I'm on the homepage
    And I add "10" unities of the product "Verre d'eau" to my cart
    Then I should be redirected to the signup page

  Scenario:
    When I sign up
    And I add "10" unities of the product "Verre d'eau" to my cart
    And I add "10" unities of the product "Verre de terre" to my cart
    And I checkout
    Then I should receive a confirmation email
    And the website admin should receive a confirmation email
