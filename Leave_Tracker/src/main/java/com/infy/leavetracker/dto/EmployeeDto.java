package com.infy.leavetracker.dto;

import java.time.LocalDate;

public class EmployeeDto {

	private Integer employeeId;
	private String employeeName;
	private String employeeRole;
	private String projectUnit;
	private String projectCode;
	private String location;
	private String allocatedCity;
	private String currentCountry;
	private String currentCity;
	private LocalDate birthDate;
	private String lineManager;
	private String emailId;
	private String team;
	private String skills;
	
	public EmployeeDto() {
		super();
	}

	public EmployeeDto(Integer employeeId, String employeeName, String employeeRole, String projectUnit,
			String projectCode, String location, String allocatedCity, String currentCountry, String currentCity,
			LocalDate birthDate, String lineManager, String emailId, String team, String skills) {
		super();
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.employeeRole = employeeRole;
		this.projectUnit = projectUnit;
		this.projectCode = projectCode;
		this.location = location;
		this.allocatedCity = allocatedCity;
		this.currentCountry = currentCountry;
		this.currentCity = currentCity;
		this.birthDate = birthDate;
		this.lineManager = lineManager;
		this.emailId = emailId;
		this.team = team;
		this.skills = skills;
	}

	
	
	

	public Integer getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public String getEmployeeRole() {
		return employeeRole;
	}

	public void setEmployeeRole(String employeeRole) {
		this.employeeRole = employeeRole;
	}

	public String getProjectUnit() {
		return projectUnit;
	}

	public void setProjectUnit(String projectUnit) {
		this.projectUnit = projectUnit;
	}

	public String getProjectCode() {
		return projectCode;
	}

	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAllocatedCity() {
		return allocatedCity;
	}

	public void setAllocatedCity(String allocatedCity) {
		this.allocatedCity = allocatedCity;
	}

	public String getCurrentCountry() {
		return currentCountry;
	}

	public void setCurrentCountry(String currentCountry) {
		this.currentCountry = currentCountry;
	}

	public String getCurrentCity() {
		return currentCity;
	}

	public void setCurrentCity(String currentCity) {
		this.currentCity = currentCity;
	}

	public LocalDate getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(LocalDate birthDate) {
		this.birthDate = birthDate;
	}

	public String getLineManager() {
		return lineManager;
	}

	public void setLineManager(String lineManager) {
		this.lineManager = lineManager;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", employeeName=" + employeeName + ", employeeRole="
				+ employeeRole + ", projectUnit=" + projectUnit + ", projectCode=" + projectCode + ", location="
				+ location + ", allocatedCity=" + allocatedCity + ", currentCountry=" + currentCountry
				+ ", currentCity=" + currentCity + ", birthDate=" + birthDate + ", lineManager=" + lineManager
				+ ", emailId=" + emailId + ", team=" + team + ", skills=" + skills + "]";
	}
	
	
	
}