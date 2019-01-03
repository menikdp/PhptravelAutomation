@Phptravels
Feature: Php Travels

  # @MainMenu
  # Scenario: MainPage
  #   Given open the website
    # Then user click on main menu
    # Then user click on all hyperlink
    # Then user click on messenger
    # Then user click on live chat

  @SearchingGoogle
  Scenario Outline: Searching using Google
  Given open the website
  Then search for "<key>"
  Examples:
  |key|
  |tutorial selenium using ruby|
  |selenium using appium|
  |selenium cucumber|


