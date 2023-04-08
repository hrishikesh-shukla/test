package com.infy.leavetracker.dto;

import java.time.LocalDate;
import java.util.Date;

public class LeaveDetailsDto {

	private Integer srNo;
	private Integer employeeId;
	private String name;
	private String country;
	private String projectUnit;
	private String month;
	private Integer year;
	private Integer noOfDays;
	private String leaveStartDate;
	private String leaveEndDate;
	private String comments;
	private String team;
	public Integer getSrNo() {
		return srNo;
	}
	public void setSrNo(Integer srNo) {
		this.srNo = srNo;
	}
	public Integer getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getProjectUnit() {
		return projectUnit;
	}
	public void setProjectUnit(String projectUnit) {
		this.projectUnit = projectUnit;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	public Integer getNoOfDays() {
		return noOfDays;
	}
	public void setNoOfDays(Integer noOfDays) {
		this.noOfDays = noOfDays;
	}
	
	public String getLeaveStartDate() {
		return leaveStartDate;
	}
	public void setLeaveStartDate(String leaveStartDate) {
		this.leaveStartDate = leaveStartDate;
	}
	public String getLeaveEndDate() {
		return leaveEndDate;
	}
	public void setLeaveEndDate(String leaveEndDate) {
		this.leaveEndDate = leaveEndDate;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public LeaveDetailsDto(Integer srNo, Integer employeeId, String name, String country, String projectUnit,
			String month, Integer year, Integer noOfDays, String leaveStartDate, String leaveEndDate, String comments,
			String team) {
		super();
		this.srNo = srNo;
		this.employeeId = employeeId;
		this.name = name;
		this.country = country;
		this.projectUnit = projectUnit;
		this.month = month;
		this.year = year;
		this.noOfDays = noOfDays;
		this.leaveStartDate = leaveStartDate;
		this.leaveEndDate = leaveEndDate;
		this.comments = comments;
		this.team = team;
	}
	@Override
	public String toString() {
		return "LeaveDetailsDto [srNo=" + srNo + ", employeeId=" + employeeId + ", name=" + name + ", country="
				+ country + ", projectUnit=" + projectUnit + ", month=" + month + ", year=" + year + ", noOfDays="
				+ noOfDays + ", leaveStartDate=" + leaveStartDate + ", leaveEndDate=" + leaveEndDate + ", comments="
				+ comments + ", team=" + team + "]";
	}
	public LeaveDetailsDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
