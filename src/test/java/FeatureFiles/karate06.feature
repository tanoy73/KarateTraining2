Feature: karate test suite 06
  This feature file consists of scenario how to test soap UI with external payload file

  @soap
  Scenario: Soap API testing
    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    #And request read('soapAPIInput.xml')
    And request read('../PayloadData/soapAPIInput.xml')
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    And match response contains "122"
    And match response //CelsiusToFahrenheitResult == 122
    And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == "xml"
    And assert responseTime <= 2000

