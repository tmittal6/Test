Feature: Create Employer 

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

Scenario: Create all employer details     
Given def query = read('createEmployerQuery.graphql')     Given def variables = read('createEmployerVariable.graphql') #And def variables = { name: 'Charmander' }     
And request { query: '#(query)', variables: '#(variables)' } #And request { query: '#(query)' }      
When method post     
* print response     
Then status 200  