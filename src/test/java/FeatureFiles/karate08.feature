Feature: Karate test suite 08
  rest api end to end testing

  Scenario: Create Fetch update delete Employee

    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"tanoy","salary":"1200","age":"30"}
    When  method POST
    Then status 200
    * def id = response.data.id
    * match response.data.name == "tanoy"
    * print id


    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method Get
    Then status 200

    Given  url "http://dummy.restapiexample.com/public/api/v1/update/" + id
    And request {"name":"tanoy","salary":"1200","age":"32"}
    When method PUT
    Then status 200

    Given  url "http://dummy.restapiexample.com/public/api/v1/delete/" + id
    When method DELETE
    Then status 200









