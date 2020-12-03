Feature: karate test suite 07
  This feature file consists of scenario how to test restapi with JSON output

  @rest
  Scenario: Rest API testing with JSON
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method GET
    Then status 200
    * assert responseTime <= 2000
    * match responseType == 'json'
    * print response
    * match response.status == "success"
    * match response.status == "#string"
    * match response.data == "#array"
    * print response.data[0].employee.name
    * match response.data[0].employee_name contains "Tiger"

