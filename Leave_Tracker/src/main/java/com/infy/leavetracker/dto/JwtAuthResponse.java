package com.infy.leavetracker.dto;

public class JwtAuthResponse {

	private String token;

	private String loggedInEmployeeName;

	private String employeeRole;

	public JwtAuthResponse() {
		super();
	}

	public JwtAuthResponse(String token, String loggedInEmployeeName, String employeeRole) {
		super();
		this.token = token;
		this.loggedInEmployeeName = loggedInEmployeeName;
		this.employeeRole = employeeRole;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getLoggedInEmployeeName() {
		return loggedInEmployeeName;
	}

	public void setLoggedInEmployeeName(String loggedInEmployeeName) {
		this.loggedInEmployeeName = loggedInEmployeeName;
	}

	public String getEmployeeRole() {
		return employeeRole;
	}

	public void setEmployeeRole(String employeeRole) {
		this.employeeRole = employeeRole;
	}

	@Override
	public String toString() {
		return "JwtAuthResponse [token=" + token + ", loggedInEmployeeName=" + loggedInEmployeeName + ", employeeRole="
				+ employeeRole + "]";
	}

}