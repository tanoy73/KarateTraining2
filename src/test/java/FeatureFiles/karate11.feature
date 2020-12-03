Feature: Karate test suite 11
  demo of using javascript within scenario

  Scenario: javascript test case 1
    * def fn1 = function(){return  123;}

    * def fn2 =
    """
    function(id)
    {
    karate.log(id);
    }
    """
    * print fn1()
    * fn2("tanoy")