import static org.junit.Assert.*;
import static org.mockito.Mockito.CALLS_REAL_METHODS;
import static org.mockito.Mockito.clearAllCaches;
import static org.mockito.Mockito.when;

import javax.swing.Spring;
import javax.validation.constraints.AssertTrue;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;

import com.infy.leavetracker.dao.HistLeaveDetailsDao;
import com.infy.leavetracker.dao.LeaveDetailsDao;
import com.infy.leavetracker.dto.HistLeaveDetailsDto;
import com.infy.leavetracker.dto.LeaveDetailsDto;
import com.infy.leavetracker.exception.LeaveDetailsException;
import com.infy.leavetracker.model.HistLeaveDetails;
import com.infy.leavetracker.model.LeaveDetails;
import com.infy.leavetracker.serviceImpl.LeaveDetailsServiceImpl;


@RunWith(MockitoJUnitRunner.class)
public class servicetest {
	@Mock
	HistLeaveDetailsDao hisdetailsdao;
	@Mock
	HistLeaveDetailsDto hisdetailsdto;
	@Mock
	LeaveDetails leavedetail;
	@Mock
	LeaveDetailsDto leavedetailsdto;
	@Mock
	LeaveDetailsDao leavedetailsdao;
	@InjectMocks
	LeaveDetailsServiceImpl leavedetailsimpl;
	@Mock
	HistLeaveDetails history;
	
	
	@Before
	public void setUp() throws Exception {
		leavedetail=new LeaveDetails(123,123, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
	}

	@After
	public void tearDown() throws Exception {
		clearAllCaches();
	}

	@Test
	public void testLeaveDetailsToHistLeaveDetails() {
		when(leavedetailsimpl.LeaveDetailsToHistLeaveDetails(leavedetail)).thenReturn(history);
		assertNotNull(history);
	}
	

}
