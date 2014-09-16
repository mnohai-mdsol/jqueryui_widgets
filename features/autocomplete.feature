Feature: Using the JQueryUI Autocomplete widget

  Background:
    Given I am on the autocomplete page

  Scenario: Entering a letter
    When I enter "b" in the autocomplete widget
    Then I should see that each item in the autocomplete list contains "b"

  Scenario: Selecting any option by the provided filter
    When I enter "b" in the autocomplete widget
    Then I should be able to select "Ruby" from the autocomplete list

  Scenario: Selecting any option by the provided filter
    When I enter "ba" in the autocomplete widget
    Then I should be able to select "BASIC" from the autocomplete list

  Scenario: No options found with filter
    When I enter "q" in the autocomplete widget
    Then I should have an error when I search for menu item "BASIC"