Feature: karate test suite 12
  calling static and not static variables of java class

  Scenario: static variable test
    * def constants = Java.type('misc.automationConstants')
    * print constants.devurl
    * print constants.getDevUrl()

  Scenario: Non static variable test
    * def env1 =
    """
    function()
    {
     var tmp = Java.type('misc.automationConstants');
     var constants = new tmp();
     return constants.qaurl;
     }
    """
    *  def qaurl = call env1
    * print qaurl
    * print env1()

  Scenario: Non static variable test2
    * def env1 =
    """
    function()
    {
     res = Java.type('misc.automationConstants');
     return new res().qaurl;
     }
    """
    *  def qaurl = call env1
    * print qaurl
    * print env1()
