package com.infy.leavetracker.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

import org.hibernate.annotations.UpdateTimestamp;


public class HistLeaveDetailsDto {
	
    private Integer srNo;
	private Integer employeeId;
	private String name;
	private String country;
	private String projectUnit;
	private String month;
	private int year;
	private int noOfDays;
	private String leaveStartDate;
	private String leaveEndDate;
	private String comments;
	private String team;
	private String createdBy;
	private LocalDateTime createdOn;
	@UpdateTimestamp
	private LocalDateTime updatedOn;
	private String updatedBy;
	private String action;
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
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getNoOfDays() {
		return noOfDays;
	}
	public void setNoOfDays(int noOfDays) {
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
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public LocalDateTime getCreatedOn() {
		return createdOn;
	}
	public void setCreatedOn(LocalDateTime createdOn) {
		this.createdOn = createdOn;
	}
	public LocalDateTime getUpdatedOn() {
		return updatedOn;
	}
	public void setUpdatedOn(LocalDateTime updatedOn) {
		this.updatedOn = updatedOn;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public HistLeaveDetailsDto(Integer srNo, Integer employeeId, String name, String country, String projectUnit,
			String month, int year, int noOfDays, String leaveStartDate, String leaveEndDate, String comments,
			String team, String createdBy, LocalDateTime createdOn, LocalDateTime updatedOn, String updatedBy,
			String action) {
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
		this.createdBy = createdBy;
		this.createdOn = createdOn;
		this.updatedOn = updatedOn;
		this.updatedBy = updatedBy;
		this.action = action;
	}
	@Override
	public String toString() {
		return "HistLeaveDetailsDto [srNo=" + srNo + ", employeeId=" + employeeId + ", name=" + name + ", country="
				+ country + ", projectUnit=" + projectUnit + ", month=" + month + ", year=" + year + ", noOfDays="
				+ noOfDays + ", leaveStartDate=" + leaveStartDate + ", leaveEndDate=" + leaveEndDate + ", comments="
				+ comments + ", team=" + team + ", createdBy=" + createdBy + ", createdOn=" + createdOn + ", updatedOn="
				+ updatedOn + ", updatedBy=" + updatedBy + ", action=" + action + "]";
	}
	public HistLeaveDetailsDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
