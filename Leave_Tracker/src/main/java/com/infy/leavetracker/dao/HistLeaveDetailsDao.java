package com.infy.leavetracker.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.infy.leavetracker.model.HistLeaveDetails;
import com.infy.leavetracker.model.LeaveDetails;


@Component
public class HistLeaveDetailsDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void addHistoryLeaveDetails(HistLeaveDetails leave) {
		
		this.hibernateTemplate.save(leave);
	}
}
