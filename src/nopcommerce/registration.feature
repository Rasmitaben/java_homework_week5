Feature: Nopcommerce Registration

  As a User
                    I want to check the Register functionality of nopcommerce

  Background:       I am on Nopcommerce Registeration page
    Given 	        I open the Google Chrome Browser
    When            I open the Url https://demo.nopcommerce.com/register
    Then 	        I am on Nopcommerce Registration page

  Scenario Outline: I am not able to register with invalid data on mandatory field (*) of registration page
    When 	        I enter First Name "<First Name>"
    And 	        I enter Last Name "<Last Name>"
    And 	        I enter Email Address "<Email>"
    And 	        I enter Password "<Password>"
    And 	        I enter Confirm Password "<Confirm Password>"
    And 	        Click on Register Button
    Then 	        I can see an Error Message "<Error Message>"
    And 	        I am not able to register

    Examples:
    |First Name|Last Name|Email           |Password| Cofirm Password|Error Message                                 |
    |""        |Bhatt    |jbhatt@gmail.com|123456  |123456          |please enter first name                       |
    |Jaya      |Bhatt    |jbhatt@gmail.com|123456  |123456          |please enter last name                        |
    |Jaya      |Bhatt    |                |123456  |123456          |please enter valid email                      |
    |Jaya      |Bhatt    |jbhatt@gmail.com|        |123456          |password is required                          |
    |Jaya      |Bhatt    |jbhatt@gmail.com|123456  |                |confirm password is required                  |
    |Jaya      |Bhatt    |jbhatt@gmail.com|123456  |134526          |password and and confirm password do not match|
    |Jaya      |Bhatt    |jbhatt@gmail.com|12345   |""              |minimum 6 character password is required      |
    |""        |""       |""              |""      |""              |mandaory (*) field is required                |

    Scenario:      I am able to select anyone of the radio button from Gender Label of Your Personal Details section
      Given 	   I am on Gender label of Your personal detail section
      When 	       I select "Male" radio button
      And	 	   I select "Female" radio button
      Then 	       I am able to select anyone of the radio button

  Scenario Outline:I am able to select Day, Month and Year from drop down list of Date of birth field
    Given 	       I am on Date of Birth field of Your Personal Detail section
    When  	       I select day "<Day>"
    And 	       I select month "<Month>"
    And 	       I select Year "<Year>"
    Then 	       I am able to select Day, Month and year from drop down list

    Examples:
      |Day  |Month   |Year|
      |24	|March   |1970|

  Scenario:        I am able to check and uncheck the Newsletter box on Options section
    Given 	       I am on Newsletter Options section
    When 	       I click on Newsletter checkbox
    And 	       I again click on Newsletter Checkbox
    Then 	       I am able to check and uncheck the box next to Newsletter option

  Scenario Outline:I am be able to register with valid mandatory (*) field data on registration page
    When 	       I enter First Name "Jaya"
    And	 	       I enter Last Name "Bhatt"
    And 	       I enter Email "jbhatt@gmail.com"
    And 	       I enter Password "123456"
    And 	       I enter Confirm Password "123456"
    And 	       I click on Register button
    Then 	       I am able to register successfully

    Examples:
      |Firstname     |Lastname     |Email ID         |Password    |Confirm Password    | Message              |
      |Jaya          |Bhatt        |jbhatt@gmail.com |123456      |123456              | successfully register|







