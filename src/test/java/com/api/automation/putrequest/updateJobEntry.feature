Feature: To test the updation of Job entry in the test application
  Test the end point PUT /normal/webapi/update

  Background: Create and Initialize base Url
    Given url 'http://localhost:1224'

  Scenario: To create the job entry for existing job  in JSON format
    #create a new job entry
    #update the job entry using PUT request
    #Using jsonPath verify the updation of details in Job Entry
    Given path '/normal/webapi/add'
    * def getRandomValue = function() {return Math.floor((100) * Math.random());}
    * def id = getRandomValue()
    #And request {"jobId": "id","jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}]
    And request {"jobId": '#(id)',"jobTitle":"Software Engg - 2","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron","Chrome"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle","Jenkins"]}]}
    And headers {Accept : 'application/json',Content-Type: 'application/json'}
    When method post
    And status 201
    #put request
    Given path '/normal/webapi/update'
    And request
      """
      {
      "jobId": '#(id)',
      "jobTitle": "Software Engg - 2",
      "jobDescription": "To develop android application and web application",
      "experience": [
          "Google",
          "Apple",
          "Mobile Iron"
      ],
      "project": [
          {
              "projectName": "Movie App",
              "technology": [
                  "Kotlin",
                  "SQL Lite",
                  "Gradle",
                  "Jenkins New"
              ]
              
          },
          {
          "projectName": "Movie App",
              "technology": [
                  "Kotlin",
                  "SQL Lite",
                  "Gradle",
                  "Jenkins New"
         
          ]
      }
      
      ]
      }
      """
    And headers {Accept : 'application/json',Content-Type: 'application/json'}
    When method put
    Then status 200
    * def projectArray = karate.jsonPath(response, "$[?(@.jobId == " + id + ")].project")
    And print projectArray
    And match projectArray[0] == '#[2]'
    
