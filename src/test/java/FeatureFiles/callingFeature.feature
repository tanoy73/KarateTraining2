Feature: calling feature

  Scenario: Calling
    * def result = call read('calledFeature.feature')
    * print result
    * match result.responseType == 'json'
    * match result.responseHeaders.Transfer-Encoding[0] == 'chunked'
    * match result.response.data[0].name == 'cerulean'

  Scenario: dummy
    Given url " "
    When method POST
    Then def payload = response
    * write
    Given url " "
    And request payload
    When method POST

