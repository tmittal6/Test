eature: GraphQL request query variable

Background: 

 * url 'AuthURL'
 * path 'token'
 * form field grant_type = 'password'
 * form field username = username
 * form field password = password
 * form field client_id = appId
 * form field client_secret = appSecret
 * form field scope = 'yourScopeURL'
 * method post
 * status 200
 * print response

  Scenario: get all employer details
    * url 'AppURL'
    Given def query = read('queryEmployers.graphql')
    #And def variables = { name: 'Tripti' }
    And request { query: '#(query)' } 
    And retry until response.id > 3
    When method get
    Then status 200
    When method post
    * print response
    Then status 200
    