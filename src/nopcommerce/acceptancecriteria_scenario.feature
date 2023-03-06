Feature: Demo Nopcommerce's top menu acceptance criteria

  As a user, I would like to check acceptance criteria of Nopcommerce top menu

  Background: I am on given URL
    When      I type URL https://demo.nopcommerce.com
    And       I click on Enter button
    Then      I am on given URL

  Scenario:   Verify that I can navigate to Books category
    When      I am on given URL
    And       I click on Books tab on top menu
    Then      I am navigated to Books category page

  Scenario:  Verify that I can see the Books category page with filters and list of products
    When     I am on given URL
    And      I click on Books tab on Top Menu
    And      I check Filters and List Tab.
    Then     Books category page is displayed with filters and list tabs

  Scenario:  Verify that user can see 'Sort by' filter on Book Category page
    Given    I am on Books Category page
    When     I click on Books Category page
    And      I check 'Sort by' filter is present
    Then     'Sort by' filter is available on Book Category page

  Scenario:  Verify that I can see 'Display' filter on Book Category page
    Given    I am on Books Category page
    When     I click on Books Category page
    And      I check 'Display' filter is present
    Then     'Display' filter is available on Book Category page

  Scenario:  Verify that I can see 'Grid' tab on Book Category page
    Given    I am on Books Category page
    When     I click on Books Category page
    And      I check 'Grid' tab is present
    Then     'Grid' tab is available on Book Category page

  Scenario: Verify that I can see 'List' tab on Book Category page
    Given   I am on Books Category page
    When    I click on Books Category page
    And     I check 'List' tab is present
    Then    'List' tab is available on Book Category page

  Scenario: Verify that I can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given   I am on Books Category page
    When    I click on Books Category page
    And     I click on 'Sort by' Filter
    And     I check that 'Name: A to Z' selection is present
    Then    'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that I can see 'Name: A to Z' is first option in  'Sort by' filter
    Given   I am on Books Category page
    When    I click on Books Category page
    And     I click on 'Sort by' Filter
    And     I check that 'Name: A to Z' is first in order
    Then    'Name: A to Z' is first option in order

  Scenario: Verify that I can see 'Name: A to Z' filter is  functioning as expected(Note: Products are filtered in alphabetical order )
    Given   I am on Books Category page
    When    I click on Books Category page
    And     I click on 'Sort by' Filter
    And     I select 'Name: A to Z' filter
    Then    All products are displayed in alphabetical order

