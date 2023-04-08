package com.infy.leavetracker.model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.format.annotation.DateTimeFormat;



@Entity
@Table(name = "leave_details")
public class LeaveDetails {
	@Id
	@Column(name = "sr_no")
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
	private Integer year;

	@Column(name = "no_of_days")
	private Integer noOfDays;

	@Column(name = "leave_start_date")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@NotNull
	private LocalDate leaveStartDate;

	@Column(name = "leave_end_date")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@NotNull
	private LocalDate leaveEndDate;
	

	@Column(name = "comments")
	private String comments;

	@Column(name = "team")
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

	public String getComments() {
		return comments;
	}


	public LocalDate getLeaveStartDate() {
		return leaveStartDate;
	}

	public void setLeaveStartDate(LocalDate leaveStartDate) {
		this.leaveStartDate = leaveStartDate;
	}

	public LocalDate getLeaveEndDate() {
		return leaveEndDate;
	}

	public void setLeaveEndDate(LocalDate leaveEndDate) {
		this.leaveEndDate = leaveEndDate;
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

	public LeaveDetails(Integer srNo, Integer employeeId, String name, String country, String projectUnit, String month,
			Integer year, Integer noOfDays, LocalDate leaveStartDate, LocalDate leaveEndDate, String comments, String team,
			String createdBy, LocalDateTime createdOn, LocalDateTime updatedOn, String updatedBy) {
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
	}

	@Override
	public String toString() {
		return "LeaveDetails [srNo=" + srNo + ", employeeId=" + employeeId + ", name=" + name + ", country=" + country
				+ ", projectUnit=" + projectUnit + ", month=" + month + ", year=" + year + ", noOfDays=" + noOfDays
				+ ", leaveStartDate=" + leaveStartDate + ", leaveEndDate=" + leaveEndDate + ", comments=" + comments
				+ ", team=" + team + ", createdBy=" + createdBy + ", createdOn=" + createdOn + ", updatedOn="
				+ updatedOn + ", updatedBy=" + updatedBy + "]";
	}

	public LeaveDetails() {
		super();
		
	}

	@Override
	public int hashCode() {
		return Objects.hash(comments, country, createdBy, createdOn, employeeId, leaveEndDate, leaveStartDate, month,
				name, noOfDays, projectUnit, srNo, team, updatedBy, updatedOn, year);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		LeaveDetails other = (LeaveDetails) obj;
		return Objects.equals(comments, other.comments) && Objects.equals(country, other.country)
				&& Objects.equals(createdBy, other.createdBy) && Objects.equals(createdOn, other.createdOn)
				&& Objects.equals(employeeId, other.employeeId) && Objects.equals(leaveEndDate, other.leaveEndDate)
				&& Objects.equals(leaveStartDate, other.leaveStartDate) && Objects.equals(month, other.month)
				&& Objects.equals(name, other.name) && Objects.equals(noOfDays, other.noOfDays)
				&& Objects.equals(projectUnit, other.projectUnit) && Objects.equals(srNo, other.srNo)
				&& Objects.equals(team, other.team) && Objects.equals(updatedBy, other.updatedBy)
				&& Objects.equals(updatedOn, other.updatedOn) && Objects.equals(year, other.year);
	}

	

	
	

}