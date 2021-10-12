Feature: GraphQl demo

Background: Create and Initialize base url
 Given url 'https://api.graphql.jobs/'
 
 Scenario: Graphql Query Execution 
 Given path '/'
 Given text query =
 """
 query{
  jobs{
    id,title
    
  }
}
"""
And request {query: '#(query)'} 
When method post 
Then status 200
Then match $ == "#object"
Then match response.data.jobs[15].title == "React Frontend Developer"
 