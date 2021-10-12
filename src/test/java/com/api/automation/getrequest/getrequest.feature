Feature: To test the get end point of the application 
To test different get end point with different data format supported by the application 

Background: Setup the Base path
Given url 'http://localhost:1224'
And print '======This is Background keyword======'

Scenario: To get all the data from the application in JSON format
Given path '/normal/webapi/all'
When method get # Send the get request 
Then status 200 #the status code of response should be 200

Scenario: To get all the data from the application in JSON format using path variable
Given path '/normal/webapi/all'
#And header Accept='application/json'
#Base path +Context path
When method get # Send the get request 
Then status 200 #the status code of response should be 200

Scenario: To get all the data from the application in XML format using path variable
Given path '/normal/webapi/all'
#And header Accept='application/xml'
#Base path +Context path
When method get # Send the get request 
Then status 200 #the status code of response should be 200


