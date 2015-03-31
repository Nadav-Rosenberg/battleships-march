Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"

  Scenario: Player does not input his name
    Given I'm on the registration_page
    When I input nothing
