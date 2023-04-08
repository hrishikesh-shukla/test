package com.infy.leavetracker.service;

import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.infy.leavetracker.dto.LeaveDetailsDto;
import com.infy.leavetracker.exception.LeaveDetailsException;
import com.infy.leavetracker.model.LeaveDetails;

public interface LeaveDetailsService {

	public String addLeaveDetails(String role,LeaveDetailsDto leaveDetailsDto) throws LeaveDetailsException;

	public LeaveDetails getLeaveDetails(Integer srNo) throws LeaveDetailsException;

	public String deleteLeaveDetails(String role,Integer srNo) throws LeaveDetailsException;

	public List<LeaveDetails> getAllLeaveDetails();

	public String updateLeaveDetails(String role,LeaveDetailsDto leaveDetailsDto) throws LeaveDetailsException;

	public List<LeaveDetails> searchLeaveDetails(LeaveDetailsDto leaveDetails);
	
	public List<Integer> getEmployeeId() throws JsonProcessingException;

}
