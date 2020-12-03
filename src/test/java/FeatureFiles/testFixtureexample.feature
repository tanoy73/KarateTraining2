Feature: test fixture test suite
  Demo using background after scenario after feature

  Background: Before scenario
    * print "before scenario"
    * configure afterScenario =
    """
    function abc()
    {
    karate.log("from after scenario")
    }
    """
    * configure afterFeature =
    """
    function abc1()
    {
    karate.log("from after feature")
    }
    """
    Scenario: Test case1
      * print "fromtc1"

    Scenario: Test case2
    * print "fromtc2"