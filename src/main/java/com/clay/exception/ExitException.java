package com.clay.exception;

import org.springframework.boot.ExitCodeGenerator;

public class ExitException extends RuntimeException implements ExitCodeGenerator {

	private static final long serialVersionUID = -1583345846614888491L;

	@Override
	public int getExitCode() {
		return 10;
	}

}
