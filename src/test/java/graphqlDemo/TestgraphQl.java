package graphqlDemo;


import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;


public class TestgraphQl {
	
	
	  @Test
	  public Karate runTest() 
	  { 
	   return Karate.run("graphQLDemo").relativeTo(getClass());  
	  
	  }	
	
	
	 
}
