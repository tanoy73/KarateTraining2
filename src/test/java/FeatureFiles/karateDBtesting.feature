Feature: Karate DB testing test suite
  Interacting with DB

  Background: dbInit
    * def db = Java.type('misc.MyDbUtil')

  Scenario: select statement test case
    * def rows = db.selectStatement("select * from tools")
    * print rows

  Scenario: insert statement test case
    * def res = db.insertStatement("insert into tools values(2220,'Majid','PLM')")
    * print res
    * match res == "Success"

  Scenario: update statement test case
    * def rowsAffected = db.updateStatement("update tools set toolName ='hello' where toolId = 2220")
    * match rowsAffected == 1


  Scenario: delete statement test case
    * def rowsAffected = db.deleteStatement("delete from tools where toolId = 2220")
    * match rowsAffected == 1
