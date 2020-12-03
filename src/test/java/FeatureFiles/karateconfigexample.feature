Feature: karate test suite
  Karate config-reading the global variable from karate config JS file

  Scenario: karate config tc1
    Given url baseurl
    And path listUsers
    When method get
    Then status 200