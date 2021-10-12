Feature: To validate the GET End point
To validate the get end point response 

Background: Setup the base url
Given url 'http://localhost:1224'

Scenario: To get the data in JSON format 
Given path '/normal/webapi/all'
And header Accept = 'application/json'
When method get
Then status 200
And print response

Scenario: To get the data in xml format 
Given path '/normal/webapi/all'
And header Accept = 'application/xml'
When method get
Then status 200
And print response


