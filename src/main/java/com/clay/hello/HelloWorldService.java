package com.clay.hello;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class HelloWorldService {
	@Value("${name:Clay}")
	private String name;

	public String getMessage() {
		return "Hello " + this.name;
	}
}