Feature: To get the Job entry in the application
  Post /normal/webapi/add to create job entry in the application

  Background: Create and Initialize base Url
    Given url 'http://localhost:1224'

  Scenario: To create the job entry in JSON format
    Given path '/normal/webapi/add'
    And request {"jobId": 5,"jobTitle":"Software Engg - 2","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron","Chrome"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle","Jenkins"]}]}]
    And headers {Accept : 'application/json',Content-Type: 'application/json'}
    When method post
    And status 201
    And print response
    And match response.jobTitle =="Software Engg - 2"

  Scenario: To create the Job Entry using XML request body format
    Given path '/normal/webapi/add'
    And request <item><jobId>7</jobId><jobTitle>Software Engg</jobTitle><jobDescription>To develop andriod application</jobDescription><experience><experience>Google</experience><experience>Apple</experience><experience>Mobile Iron</experience></experience><project><project><projectName>Movie App</projectName><technology><technology>Kotlin</technology><technology>SQL Lite</technology><technology>Gradle</technology></technology></project></project></item>
    And headers {Accept : 'application/json',Content-Type: 'application/xml'}
    When method post
    And status 201
    And print response
    And match response.jobId == 7

  Scenario: To create the Job Entry using XML request body format and receive the response in xml
    Given path '/normal/webapi/add'
    And request <item><jobId>8</jobId><jobTitle>Software Engg</jobTitle><jobDescription>To develop andriod application</jobDescription><experience><experience>Google</experience><experience>Apple</experience><experience>Mobile Iron</experience></experience><project><project><projectName>Movie App</projectName><technology><technology>Kotlin</technology><technology>SQL Lite</technology><technology>Gradle</technology></technology></project></project></item>
    And headers {Accept : 'application/xml',Content-Type: 'application/xml'}
    When method post
    And status 201
    And print response
    And match response /Job/jobId == "8"

  Scenario: To create the job entry in JSON 
    Given path '/normal/webapi/add'
    * def body = read("data/jobEntry.json")
    And request body
    And headers {Accept : 'application/json',Content-Type: 'application/json'}
    When method post
    And status 201
    And print response
    And match response.jobTitle =="Software Engg - 2"

  Scenario: To create the Job Entry using XML
    Given path '/normal/webapi/add'
    * def body = read("data/jobEntry.xml")
    And request body
    And headers {Accept : 'application/json',Content-Type: 'application/xml'}
    When method post
    And status 201
    And print response
    And match response.jobId == 7
