package com.api.automation;

import com.intuit.karate.Runner.Builder;
import com.intuit.karate.junit5.Karate.Test;

public class ParallelBuilder {
	
	
	@Test
	public void executeKarateTest()
	{
		Builder aRunner = new Builder();
		aRunner.path("classpath:com/api/automation");
		aRunner.parallel(5);
		
	}
	

}
