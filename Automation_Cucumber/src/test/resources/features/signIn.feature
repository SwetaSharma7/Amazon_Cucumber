Feature: Sign In Functionality for Amazon Website
  As a user of the Amazon website
  I want to be able to sign in with my account
  So that I can access my account-related features and manage my orders

  Background:
    Given I am on the Amazon sign-in page

    Scenario: Successful sign-in with valid credentials
#     // Given I am on the Amazon sign-in page
      When I have entered a valid email click continue
      And I have entered a valid password click signIn
      Then I should be signed in successfully

  Scenario Outline: Sign-in with incorrect email displays appropriate error message
    When I have entered an incorrect email "<email>" click continue
    And I have entered a valid password "<password>" click signIn

    Examples:
      | email                        | password |
      | abc@gmail                    |          |
      | patilvijaysing2092@gmail.com | 12345    |




