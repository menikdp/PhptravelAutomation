@Phptravels
Feature: Php Travels

  @MainMenu
  Scenario: MainMenu
    Given open the website
    Then user click on main menu
    Then user closing the browser

  @SignIn
  Scenario: SignIn
    Given open the website
    When user choose home-page frontend
    Then user should on home-page frontend