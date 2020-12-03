Feature: Karate test suite
  data driven testing

  @DDT
  Scenario Outline: DDT testing
    Given url "http://reqres.in"
    And path "/api/users?page=<pno>"
    When method Get
    Then status 200
    And match response.page == 1

    Examples:
    | pno |
    | 1 |
    | 2 |
    | 3 |
    | 4 |
    | 5 |