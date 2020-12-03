Feature: Karate testsuite2
  This feature file consists of scenario how to validate json content

  Scenario: JSON test case1
    Given def JSON = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print JSON
    Then match JSON.id == "101"
    * match JSON.tool.name == "Karate"
    * match JSON.tool.version == "0.9.6"
    * match JSON.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: JSON test case2
    Given def JSON =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
    """
    * print JSON
    Then match JSON.id == "101"
    * match JSON.tool.name == "Karate"
    * match JSON.tool.version == "0.9.6"
    * match JSON.tool == { "name":"Karate", "version":"0.9.6"}