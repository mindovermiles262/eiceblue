package com.foo.demo;

import com.spire.xls.Workbook;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
		System.out.println("Hello World - Spire.XLS loaded: " + new Workbook().getClass().getName());
	}

}
