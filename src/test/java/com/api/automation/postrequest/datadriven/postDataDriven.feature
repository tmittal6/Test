Feature: To create job description in the test application

Background: To read the data for data driven
 * def testdata = read("testdata.csv")

  #Scenario Outline: To create job description in the test application
    #Given print '<url>'
    #Then print   '<path>'
    #When print    '<method>'
    #And print '<status>'

    #Examples: 
      #| url                   | path               | method | status |
      #| http://localhost:1224 | /normal/webapi/all | get    |    200 |
      #| http://localhost:1224 | /normal/webapi/add | post   |    201 |

  #Scenario Outline: Data driven for the job entry in JSON format 
    #Given url 'http://localhost:1224'
    #And path '/normal/webapi/add'
    #And request {"jobId": '#(jobId)',"jobTitle":'#(jobTitle)',"jobDescription":'#(jobDescription)',"experience":["Google","Apple","Mobile Iron","Chrome"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle","Jenkins"]}]}]
    #And headers {Accept : 'application/json',Content-Type: 'application/json'}
    #When method post
    #And status <status>

    #Examples: 
      #| jobId | jobTitle          | jobDescription                 | status |
      #|  1224 | Software Engg - 2 | To develop andriod application |    201 |
      #| id    | Software Engg - 2 | To develop andriod application |    400 |
      #| false | Software Engg - 2 | To develop andriod application |    400 |

      
      
     Scenario Outline: Data driven for the job entry using csv files - <jobId>
    Given url 'http://localhost:1224'
    And path '/normal/webapi/add'
    And request {"jobId": '#(jobId)',"jobTitle":'#(jobTitle)',"jobDescription":'#(jobDescription)',"experience":["Google","Apple","Mobile Iron","Chrome"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle","Jenkins"]}]}]
    And headers {Accept : 'application/json',Content-Type: 'application/json'}
    When method post
    And status <status>
    And print response
    

    Examples:
     |testdata| 
     
    
      
      