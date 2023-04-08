package com.infy.leavetracker.exception;

import java.time.LocalDateTime;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@ControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(LeaveDetailsException.class)
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	public String leaveDetailsExceptionHandler(Model m) {
		System.out.println("leaveDetailsExceptionHandler");
		ErrorInfo error = new ErrorInfo();
		error.setErrorMessage("Leave Details Exception has ocurred");
		error.setTimestamp(LocalDateTime.now());
		error.setErrorCode(HttpStatus.NOT_FOUND.value());
		m.addAttribute("error", error);
		return "Exception";
	}

	@ExceptionHandler(Exception.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public String exceptionHandlerGeneric(Model m) {
		System.out.println("ExceptionHandler");

		ErrorInfo error = new ErrorInfo();
		error.setErrorMessage("An Exception has ocurred");
		error.setTimestamp(LocalDateTime.now());
		error.setErrorCode(HttpStatus.NOT_FOUND.value());
		m.addAttribute("error", error);
		return "Exception";
	}

	@ExceptionHandler(RuntimeException.class)
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	public String exceptionHandlerRuntime(Model m) {
		System.out.println("RuntimeExceptionHandler");

		ErrorInfo error = new ErrorInfo();
		error.setErrorMessage("An Exception has ocurred");
		error.setTimestamp(LocalDateTime.now());
		error.setErrorCode(HttpStatus.NOT_FOUND.value());
		m.addAttribute("error", error);
		return "Exception";
	}

}