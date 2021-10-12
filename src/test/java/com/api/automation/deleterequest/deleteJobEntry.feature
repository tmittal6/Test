Feature: To test the delete end point
 DELETE /normal/webapi/remove/{id} 


  Background: Create and Initialize base Url
    Given url 'http://localhost:1224'
    
    Scenario: To delete the entry from the application     
    #delete request
    Given path '/normal/webapi/remove/' +'212'
    And headers {Accept : 'application/json'}
    When method delete
    Then status 200
   