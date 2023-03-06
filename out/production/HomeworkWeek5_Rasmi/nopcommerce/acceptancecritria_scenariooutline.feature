Feature: Book Category

  Background:       I am able to see homepage
    Given           I enter URL" https://demo.nopcommerce.com/" in browser
    And             I am on  home page

  Scenario Outline: I am able to see top menu tabs on homepage with categories
    When            I am on home page
    Then            I am able to see top menu tabs with "<categories>"

    Examples:
      |Categories         |
      |Computer           |
      |Electronic         |
      |Apparel            |
      |Digital downloads  |
      |Books              |
      |Jewellery          |
      |Gift card          |

  Scenario Outline: I am able to see book page with filters

    When            I select book category from top menu tabs on home page
    Then            I am able to navigated  to book category
    And             I am able to see "<filters>"

    Examples:
      |Filters   |
      |Short by  |
      |Display   |
      |Grid Tab  |
      |List Tab  |