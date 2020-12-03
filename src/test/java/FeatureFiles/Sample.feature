Feature: First Feature
  this is the feature created to test

  Background: This is setup block
    Given this is precondition step1
    And this is precondition step2

  @tagname
  Scenario: First karate test case

    Given this is precondition step1
    And this is precondition step2

    When this is Action step1
    And this is Action step2

    When this is Validation step1
    And this is Validation step2

