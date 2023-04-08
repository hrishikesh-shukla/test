package com.infy.leavetracker.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.infy.leavetracker.exception.LeaveDetailsException;
import com.infy.leavetracker.model.LeaveDetails;



@Component
public class LeaveDetailsDao {

	@Autowired
	private HibernateTemplate hibernatetemplate;

	@Transactional
	public LeaveDetails addLeaveDetails(LeaveDetails leaveDetails) throws LeaveDetailsException{
		 this.hibernatetemplate.saveOrUpdate(leaveDetails);
		return leaveDetails;

	}
	
	public List<LeaveDetails> getAllLeaveDetails() {
		List<LeaveDetails> leaves = hibernatetemplate.loadAll(LeaveDetails.class);
		return leaves;
	}
	@Transactional
	public void deleteLeaveDetails(Integer srNo) throws LeaveDetailsException {
		LeaveDetails leave = this.hibernatetemplate.load(LeaveDetails.class, srNo);
		this.hibernatetemplate.delete(leave);
		
	}

	public LeaveDetails getLeaveDetails(Integer SrNo) throws LeaveDetailsException {
		return this.hibernatetemplate.get(LeaveDetails.class, SrNo);
	}
	
	public LeaveDetails getLeaveDetailsById(Integer employeeId) {
		return this.hibernatetemplate.get(LeaveDetails.class, employeeId);
	}
	
	
//	public LeaveDetails updateLeaveDetails(Integer SrNo) {
//		
//	}
}
