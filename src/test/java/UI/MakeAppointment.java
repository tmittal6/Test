package UI;


import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;


public class MakeAppointment {
	
	
	  @Test
	  public Karate runTest() 
	  { 
	   return Karate.run("MakeAppointment").relativeTo(getClass());  
	  
	  }	
	
	
	 
}
