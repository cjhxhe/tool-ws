package com.clay.exception;

public class SOAPClientException extends Exception {

	private static final long serialVersionUID = 1L;

	public SOAPClientException() {
		super();
	}

	public SOAPClientException(String arg0) {
		super(arg0);
	}

	public SOAPClientException(String arg0, Throwable arg1) {
		super(arg0, arg1);
	}

	public SOAPClientException(Throwable arg0) {
		super(arg0);
	}
}