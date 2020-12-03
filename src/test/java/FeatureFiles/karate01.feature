Feature: karate test suite1
  Demo of using variables in scenario

  Scenario: testcase1
    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert c == 30
    And print "c=", c
    And karate.log("Test Ended")

  Scenario: testcase2
    Given def a = 10
    * def b = 20
    When def c = a * b
    Then assert c == 200
    * print "c=", c
    * karate.log("Test Ended")

  Scenario: testcase3
    * def a = 10
    * def b = 30
    * def c = a * b
    * assert c == 300
    * print "c=", c
    * karate.log("Test Ended")