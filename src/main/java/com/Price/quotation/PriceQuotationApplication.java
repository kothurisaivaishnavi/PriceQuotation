package com.Price.quotation;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
/*import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.Price.quotation.Config.DBConfig;*/

@SpringBootApplication(scanBasePackages={"com.Price.quotation.Config","com.Price.quotation.Controller","com.Price.quotation.Model","com.Price.quotation.Service"})
public class PriceQuotationApplication {
	public static void main(String[] args) {
		SpringApplication.run(PriceQuotationApplication.class, args);
		//System.out.println("working");
		//AnnotationConfigApplicationContext applicationContextDatabase = new AnnotationConfigApplicationContext(DBConfig.class);
		
	}
}
