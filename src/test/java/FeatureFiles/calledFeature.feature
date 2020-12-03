Feature: called feature test suite
  using url and path

  Scenario: url and path test case 1
    Given url "http://reqres.in"
    And path "/api/users?page=2"
    When method Get
    Then status 200
    And match response.page == 1

