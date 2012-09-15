Feature: Starting a class
  In order to get started with a new class
  As an unauthorized user
  I should be able to start working with a class

  Scenario: Blank slate

  Scenario: Naming a class
    Given I am in an initial class
    When I enter a name for the class
    Then the class should have a name

  Scenario: Entering a new student
