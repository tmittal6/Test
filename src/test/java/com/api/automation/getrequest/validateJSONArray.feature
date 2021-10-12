Feature: To validate the GET End point
To validate the get end point response 

Background: Setup the base url
Given url 'http://localhost:1224'

Scenario: To get the data in JSON format 
Given path '/normal/webapi/all'
And header Accept = 'application/json'
When method get
Then status 200
And match response.[0].jobId == 1
And match response.[0].experience[1] == 'Apple'
And match response.[0].project[0].projectName == 'Movie App'
And match response.[0].project[0].technology[2] == 'Gradle'


Scenario: To get the data in xml format 
Given path '/normal/webapi/all'
And header Accept = 'application/xml'
When method get
Then status 200
And print response


