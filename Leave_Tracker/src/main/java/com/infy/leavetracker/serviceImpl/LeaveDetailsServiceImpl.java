package com.infy.leavetracker.serviceImpl;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.infy.leavetracker.controller.MainController;
import com.infy.leavetracker.dao.HistLeaveDetailsDao;
import com.infy.leavetracker.dao.LeaveDetailsDao;
import com.infy.leavetracker.dto.LeaveDetailsDto;
import com.infy.leavetracker.exception.LeaveDetailsException;
import com.infy.leavetracker.model.HistLeaveDetails;
import com.infy.leavetracker.model.LeaveDetails;
import com.infy.leavetracker.service.LeaveDetailsService;

@Service
public class LeaveDetailsServiceImpl implements LeaveDetailsService {

	@Autowired
	private LeaveDetailsDao leaveDetailsDao;
	@Autowired
	private HistLeaveDetailsDao histLeaveDetailsDao;
	@Autowired
	private EmployeeService employeeService;
	private static Logger logger = LoggerFactory.getLogger(MainController.class);

	String role = "akib";

	@Override
	public String addLeaveDetails(String role,LeaveDetailsDto leaveDetailsDto) throws LeaveDetailsException {
		String message = "";
		LeaveDetails leaveDetails = dtoToLeaveDetails(leaveDetailsDto);
		leaveDetails.setCreatedBy(role);
		leaveDetails.setUpdatedBy(role);
		LeaveDetails addLeaveDetails = this.leaveDetailsDao.addLeaveDetails(leaveDetails);
		if (addLeaveDetails != null) {
			message = "Leave details added successfully";
			logger.info(message + " in Service");
			HistLeaveDetails histLeaveDetails = LeaveDetailsToHistLeaveDetails(leaveDetails);
			histLeaveDetails.setAction("A");
			histLeaveDetails.setCreatedBy(role);
			histLeaveDetails.setUpdatedBy(role);
			this.histLeaveDetailsDao.addHistoryLeaveDetails(histLeaveDetails);
		} else {
			message = "Failed to add Leave details ";
			logger.info(message);
		}
		return message;

	}

	@Override
	public LeaveDetails getLeaveDetails(Integer srNo) throws LeaveDetailsException {

		LeaveDetails leaveDetails = this.leaveDetailsDao.getLeaveDetails(srNo);
		logger.info("Inside getLeaveDetails service");

		return leaveDetails;
	}

	@Override
	public String deleteLeaveDetails(String role,Integer srNo) throws LeaveDetailsException {
		String message = "";
		logger.info("Srno inside service..." + srNo);
		LeaveDetails leaveDetails = leaveDetailsDao.getLeaveDetails(srNo);
		if (leaveDetails != null) {
			HistLeaveDetails histLeaveDetails = LeaveDetailsToHistLeaveDetails(leaveDetails);
			histLeaveDetails.setCreatedBy(role);
			histLeaveDetails.setUpdatedBy(role);
			histLeaveDetails.setAction("D");
			this.histLeaveDetailsDao.addHistoryLeaveDetails(histLeaveDetails);
			this.leaveDetailsDao.deleteLeaveDetails(srNo);
			message = "Leave details deleted successfully";
			logger.info(message + " in service");
		} else {
			message = "Failed to delete leave details";
			logger.info(message);
		}
		return message;
	}

	@Override
	public List<LeaveDetails> getAllLeaveDetails() {
		List<LeaveDetails> leaveDetails = this.leaveDetailsDao.getAllLeaveDetails();
		return leaveDetails;
	}

	@Override
	public String updateLeaveDetails(String role,LeaveDetailsDto leaveDetailsDto) throws LeaveDetailsException {
		logger.info("Inside service method " + leaveDetailsDto.toString());
		logger.info("Inside service method " + leaveDetailsDto.getSrNo());
		LeaveDetails leaveDetails = leaveDetailsDao.getLeaveDetails(leaveDetailsDto.getSrNo());
		String message = "";
		if (leaveDetails != null) {

			leaveDetails.setEmployeeId(leaveDetailsDto.getEmployeeId());
			leaveDetails.setName(leaveDetailsDto.getName());
			leaveDetails.setCountry(leaveDetailsDto.getCountry());
			leaveDetails.setProjectUnit(leaveDetailsDto.getProjectUnit());
			leaveDetails.setMonth(leaveDetailsDto.getMonth());
			leaveDetails.setNoOfDays(leaveDetailsDto.getNoOfDays());
			leaveDetails.setYear(leaveDetailsDto.getYear());
			leaveDetails.setLeaveStartDate(LocalDate.parse(leaveDetailsDto.getLeaveStartDate()));
			leaveDetails.setLeaveEndDate(LocalDate.parse(leaveDetailsDto.getLeaveEndDate()));
			leaveDetails.setComments(leaveDetailsDto.getComments());
			leaveDetails.setTeam(leaveDetailsDto.getTeam());
			leaveDetails.setCreatedBy(role);
			leaveDetails.setUpdatedBy(role);

			HistLeaveDetails histLeaveDetails = LeaveDetailsToHistLeaveDetails(leaveDetails);
			histLeaveDetails.setAction("U");
			histLeaveDetails.setCreatedBy(role);
			histLeaveDetails.setUpdatedBy(role);
			this.histLeaveDetailsDao.addHistoryLeaveDetails(histLeaveDetails);
			this.leaveDetailsDao.addLeaveDetails(leaveDetails);
			message = "Leave Details updated successfully";
			logger.info(message + " in service");
		} else {
			message = "Failed to update leave details";
			logger.info(message);
		}
		return message;
	}

	@Override
	public List<LeaveDetails> searchLeaveDetails(LeaveDetailsDto leaveDetailsDto) {
		List<LeaveDetails> filterList;
		List<LeaveDetails> tempList = null;
		List<LeaveDetails> getAllLeaveDetails = leaveDetailsDao.getAllLeaveDetails();
		filterList = getAllLeaveDetails;
		

		if (leaveDetailsDto != null) {
				
			if (leaveDetailsDto.getEmployeeId() != null) {

				tempList = filterList.stream().filter((e) -> e.getEmployeeId().equals(leaveDetailsDto.getEmployeeId()))
						.collect(Collectors.toList());
				filterList = tempList;
			}

			if (!leaveDetailsDto.getLeaveStartDate().trim().isEmpty()) {

				tempList = filterList.stream().filter(
						(e) -> e.getLeaveStartDate().isEqual(LocalDate.parse(leaveDetailsDto.getLeaveStartDate())))
						.collect(Collectors.toList());
				System.out.println("TEMP LIST IN START DATE " + tempList);
				filterList = tempList;
			}
			System.out.println("CHECKING COUNTRY" +  leaveDetailsDto);
			if (leaveDetailsDto.getCountry() != null && !leaveDetailsDto.getCountry().trim().isEmpty()) {
			    tempList = filterList.stream()
			            .filter((e) -> e.getCountry().equalsIgnoreCase(leaveDetailsDto.getCountry()))
			            .collect(Collectors.toList());
			    filterList = tempList;
			}

			if (leaveDetailsDto.getName() != null && !leaveDetailsDto.getName().trim().isEmpty()) {
				tempList = filterList.stream().filter((e) -> e.getName().equalsIgnoreCase(leaveDetailsDto.getName()))
						.collect(Collectors.toList());
				filterList = tempList;
			}
			if (leaveDetailsDto.getProjectUnit() != null && !leaveDetailsDto.getProjectUnit().trim().isEmpty()) {

				tempList = filterList.stream()
						.filter((e) -> e.getProjectUnit().equalsIgnoreCase(leaveDetailsDto.getProjectUnit()))
						.collect(Collectors.toList());
				filterList = tempList;
			}
			if (!leaveDetailsDto.getMonth().trim().isEmpty()) {

				tempList = filterList.stream().filter((e) -> e.getMonth().equalsIgnoreCase(leaveDetailsDto.getMonth()))
						.collect(Collectors.toList());
				filterList = tempList;
			}

			if (leaveDetailsDto.getTeam() != null && !leaveDetailsDto.getTeam().trim().isEmpty()) {

				tempList = filterList.stream().filter((e) -> e.getTeam().equalsIgnoreCase(leaveDetailsDto.getTeam()))
						.collect(Collectors.toList());
				filterList = tempList;
			}

		}

		System.out.println("Filter List" + filterList);

		return filterList;
	}

	public LeaveDetails dtoToLeaveDetails(LeaveDetailsDto leaveDetailsDto) {
		LeaveDetails leaveDetails = new LeaveDetails();
		leaveDetails.setSrNo(leaveDetailsDto.getSrNo());
		leaveDetails.setEmployeeId(leaveDetailsDto.getEmployeeId());
		leaveDetails.setName(leaveDetailsDto.getName());
		leaveDetails.setCountry(leaveDetailsDto.getCountry());
		leaveDetails.setProjectUnit(leaveDetailsDto.getProjectUnit());
		leaveDetails.setMonth(leaveDetailsDto.getMonth());
		leaveDetails.setYear(leaveDetailsDto.getYear());
		leaveDetails.setNoOfDays(leaveDetailsDto.getNoOfDays());

		leaveDetails.setLeaveStartDate(LocalDate.parse(leaveDetailsDto.getLeaveStartDate()));
		leaveDetails.setLeaveEndDate(LocalDate.parse(leaveDetailsDto.getLeaveEndDate()));
		leaveDetails.setComments(leaveDetailsDto.getComments());
		leaveDetails.setTeam(leaveDetailsDto.getTeam());
		return leaveDetails;

	}

	public HistLeaveDetails LeaveDetailsToHistLeaveDetails(LeaveDetails leaveDetails) {
		HistLeaveDetails HistleaveDetails = new HistLeaveDetails();
		HistleaveDetails.setSrNo(leaveDetails.getSrNo());
		HistleaveDetails.setEmployeeId(leaveDetails.getEmployeeId());
		HistleaveDetails.setName(leaveDetails.getName());
		HistleaveDetails.setCountry(leaveDetails.getCountry());
		HistleaveDetails.setProjectUnit(leaveDetails.getProjectUnit());
		HistleaveDetails.setMonth(leaveDetails.getMonth());
		HistleaveDetails.setYear(leaveDetails.getYear());
		HistleaveDetails.setNoOfDays(leaveDetails.getNoOfDays());
		HistleaveDetails.setLeaveStartDate(leaveDetails.getLeaveStartDate().toString());
		HistleaveDetails.setLeaveEndDate(leaveDetails.getLeaveEndDate().toString());
		HistleaveDetails.setComments(leaveDetails.getComments());
		HistleaveDetails.setTeam(leaveDetails.getTeam());
		return HistleaveDetails;

	}
	
	public List<Integer> getEmployeeId() throws JsonProcessingException {
		List<Integer> employeeIdList= employeeService.getdata().stream().map((employee)-> employee.getEmployeeId()).collect(Collectors.toList());
		
		return employeeIdList;
	}
	
}
