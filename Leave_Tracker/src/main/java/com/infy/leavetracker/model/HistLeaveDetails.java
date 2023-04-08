package com.infy.leavetracker.model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;



@Entity(name = "hist_leave_details")
public class HistLeaveDetails {
	
	@Id
    @Column(name="sr_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer srNo;
	
	@Column(name = "employee_id")
	private Integer employeeId;
	
	@Column(name = "name")
	private String name;
	
	@Column(name="country")
	private String country;
	
	@Column(name = "project_unit")
	private String projectUnit;
	
	@Column(name = "month")
	private String month;
	
	@Column(name = "year")
	private int year;
	
	@Column(name = "no_of_days")
	private int noOfDays;
	
	@Column(name="leave_start_date")
	private String leaveStartDate;
	
	@Column(name="leave_end_date")
	private String leaveEndDate;
	
	@Column(name="comments")
	private String comments;
	
	@Column(name="team")
	private String team;
	
	@Column(name = "cre_user")
	private String createdBy;
	
	@Column(name = "cre_date")
	@CreationTimestamp
	private LocalDateTime createdOn;
	
	@Column(name = "upd_date")
	@UpdateTimestamp
	private LocalDateTime updatedOn;

	@Column(name = "upd_user")
	private String updatedBy;
	
	@Column(name="Action", length=1)
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

	public HistLeaveDetails(Integer srNo, Integer employeeId, String name, String country, String projectUnit,
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
		return "HistLeaveDetails [srNo=" + srNo + ", employeeId=" + employeeId + ", name=" + name + ", country="
				+ country + ", projectUnit=" + projectUnit + ", month=" + month + ", year=" + year + ", noOfDays="
				+ noOfDays + ", leaveStartDate=" + leaveStartDate + ", leaveEndDate=" + leaveEndDate + ", comments="
				+ comments + ", team=" + team + ", createdBy=" + createdBy + ", createdOn=" + createdOn + ", updatedOn="
				+ updatedOn + ", updatedBy=" + updatedBy + ", action=" + action + "]";
	}

	public HistLeaveDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	

}