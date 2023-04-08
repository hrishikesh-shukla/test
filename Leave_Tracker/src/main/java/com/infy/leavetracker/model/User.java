package com.infy.leavetracker.model;

import javax.persistence.Entity;

import com.fasterxml.jackson.annotation.JsonProperty;


public class User {
	@JsonProperty("loggedInEmployeeName")
	private String loggedInEmployeeName;
	@JsonProperty("employeeRole")
	private String employeeRole;

	
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

	
	public User(String loggedInEmployeeName, String employeeRole) {
		super();
		this.loggedInEmployeeName = loggedInEmployeeName;
		this.employeeRole = employeeRole;
	}


	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
