Feature: Test suite 14
  CSV Data reading for DDT

  Scenario Outline: CSV DDT Testing
    * print "<custid>, <custname>, <age>, <salary>"
    * def json1 = {"last_name" : <custname>}
    * print json1

    Examples:
      | read('classpath:data.csv') |
