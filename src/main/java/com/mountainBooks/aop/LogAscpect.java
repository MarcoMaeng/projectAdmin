package com.mountainBooks.aop;


import java.util.logging.Logger;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
@Aspect
@Component
public class LogAscpect {
	
	public static Logger logger= Logger.getLogger(LogAscpect.class.getName());
	public static final String logMsg="LOGMSG > ";
	
	@Around(value="within(com.mountainBooks..*)")
	public Object advice(ProceedingJoinPoint joinPoint) {
		Object obj=null;
		
		try {
			
			logger.info(joinPoint.getTarget().getClass().getName()+"\t\t"+joinPoint.getSignature().getName());
			
			obj=joinPoint.proceed();
			
		}catch(Throwable e) {
			e.printStackTrace();
		}
		
		return obj;
		
	}
	
	

}
