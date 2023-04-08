package com.infy.leavetracker.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.infy.leavetracker.dto.EmployeeDto;
import com.infy.leavetracker.dto.JwtAuthRequest;
import com.infy.leavetracker.dto.JwtAuthResponse;
@ResponseBody
@ResponseStatus
@Service
public class EmployeeService {
	

	@Autowired(required = true)
	RestTemplate restTemplate;
	String userEmailid;
	
	private String REGISTRATION_URL = "http://localhost:8088/employeeportal/authenticate/login";
	private String PARTIALDATA_URL = "http://localhost:8088/employeeportal/getAllEmployee";
	private String PARTIALDATA_URL_USER = "http://localhost:8088/employeeportal/getLoggedInEmployee/";
	private String PARTIALDATA_SPECIFIC_EMPLOYEE = "http://localhost:8088/employeeportal/getemployeedetailbyid/";

//	@RequestMapping(value = "/getDetails", method = RequestMethod.GET)
//	public ResponseEntity<List<EmployeeDto>> getdata() throws JsonProcessingException {
//		List<EmployeeDto> body = new ArrayList<>();
//		JwtAuthRequest request = new JwtAuthRequest();
//		
//		request.setUserName("akib");
//		request.setPassword("1234");
//		
//		String requestBody = getBody(request);
//		System.out.println(requestBody);
//		HttpHeaders headers = getHeaders();
//		HttpEntity<String> authenticationEntity = new HttpEntity<String>(requestBody, headers);
//		try {
//			ResponseEntity<JwtAuthResponse> Token = restTemplate.exchange(REGISTRATION_URL, HttpMethod.POST,authenticationEntity, JwtAuthResponse.class);
//			if (Token.getStatusCode().equals(HttpStatus.OK)) {
//				String token = "Bearer " + Token.getBody().getToken();
//				HttpHeaders header = getHeaders();
//				header.set("Authorization", token);
//				System.out.println(token);
//				HttpEntity<EmployeeDto> jwtEntity = new HttpEntity<EmployeeDto>(header);
//				
//				ParameterizedTypeReference<List<EmployeeDto>> employeeDetailsList = new ParameterizedTypeReference<List<EmployeeDto>>() {
//
//				};
//				
//				ResponseEntity<List<EmployeeDto>> listOfPartialData = restTemplate.exchange(PARTIALDATA_URL,
//						HttpMethod.GET, jwtEntity, employeeDetailsList);
//				if (listOfPartialData != null) {
//					body = listOfPartialData.getBody();
//					System.out.println("BODY************** "+body);
//					//return new ResponseEntity<List<EmployeeDto>>(body,HttpStatus.OK);
//				}
//			}
//
//		} catch (Exception e) {
//			System.out.println(e);
//
//		}
//		return new ResponseEntity<List<EmployeeDto>>(body,HttpStatus.OK);
//	}

	//@RequestMapping(value = "/getDetails", method = RequestMethod.GET)
	public List<EmployeeDto> getdata() throws JsonProcessingException {
		List<EmployeeDto> body = new ArrayList<>();
		JwtAuthRequest request = new JwtAuthRequest();
		
		request.setUserName("rajiv.s@infosys.com");
		request.setPassword("9009");
		
		String requestBody = getBody(request);
		
		HttpHeaders headers = getHeaders();
		HttpEntity<String> authenticationEntity = new HttpEntity<String>(requestBody, headers);
		try {
			ResponseEntity<JwtAuthResponse> Token = restTemplate.exchange(REGISTRATION_URL, HttpMethod.POST,authenticationEntity, JwtAuthResponse.class);
			if (Token.getStatusCode().equals(HttpStatus.OK)) {
				String token = "Bearer " + Token.getBody().getToken();
				System.out.println(token);
				HttpHeaders header = getHeaders();
				header.set("Authorization", token);
				System.out.println(token);
				HttpEntity<EmployeeDto> jwtEntity = new HttpEntity<EmployeeDto>(header);
				System.out.println("****************************************");
				ParameterizedTypeReference<List<EmployeeDto>> employeeDetailsList = new ParameterizedTypeReference<List<EmployeeDto>>() {

				};
				
				 ResponseEntity<List<EmployeeDto>> listOfPartialData = restTemplate.exchange(PARTIALDATA_URL,
						HttpMethod.GET, jwtEntity, employeeDetailsList);
				 System.out.println("listofpartialdata******** "+listOfPartialData);
				if (listOfPartialData != null) {
					
					body = listOfPartialData.getBody();
					System.out.println("BODY************ "+body);
					return body;
				}
			}

		} catch (Exception e) {
			System.out.println(e);

		}
		System.out.println("LIST OF EMPLOYEES************** "+body);
		return body;
	}
	
	@ResponseBody
  public EmployeeDto getdata(@PathVariable String userName) throws JsonProcessingException {
		System.out.println(userName+"USERNAME*************");
		userEmailid=userName;
		System.out.println(userEmailid+"USEREMAILID");
		EmployeeDto employeeDto=new EmployeeDto();
		JwtAuthRequest request = new JwtAuthRequest();
		
		request.setUserName("rajiv.s@infosys.com");
		request.setPassword("9009");
		
		String requestBody = getBody(request);
		
		HttpHeaders headers = getHeaders();
		HttpEntity<String> authenticationEntity = new HttpEntity<String>(requestBody, headers);
		try {
			ResponseEntity<JwtAuthResponse> Token = restTemplate.exchange(REGISTRATION_URL, HttpMethod.POST,authenticationEntity, JwtAuthResponse.class);
			if (Token.getStatusCode().equals(HttpStatus.OK)) {
				String token = "Bearer " + Token.getBody().getToken();
				System.out.println(token);
				HttpHeaders header = getHeaders();
				header.set("Authorization", token);
				System.out.println(token);
				HttpEntity<EmployeeDto> jwtEntity = new HttpEntity<EmployeeDto>(header);
				System.out.println("****************************************");
				ParameterizedTypeReference<List<EmployeeDto>> employeeDetailsList = new ParameterizedTypeReference<List<EmployeeDto>>() {

				};
				
				 ResponseEntity<EmployeeDto> loggedInEmployee = restTemplate.exchange(PARTIALDATA_URL_USER+userEmailid,
						HttpMethod.GET, jwtEntity, EmployeeDto.class);
				 System.out.println(PARTIALDATA_URL_USER+"PARTILAURLUSER");
				 System.out.println("listofpartialdata******** "+loggedInEmployee);
				if (loggedInEmployee != null) {
					
					employeeDto = loggedInEmployee.getBody();
					System.out.println("BODY************ "+employeeDto);
					return employeeDto;
				}
			}

		} catch (Exception e) {
			System.out.println(e);

		}
		System.out.println("LIST OF EMPLOYEES************** "+employeeDto);
		return employeeDto;
	}
	
	@ResponseBody
	  public EmployeeDto getdata(@PathVariable Integer empId) throws JsonProcessingException {
			System.out.println(empId+"empId*************");
			Integer employeeId=empId;
			System.out.println(employeeId + "employeeId");
			EmployeeDto employeeDto=new EmployeeDto();
			JwtAuthRequest request = new JwtAuthRequest();
			
			request.setUserName("rajiv.s@infosys.com");
			request.setPassword("9009");
			
			String requestBody = getBody(request);
			
			HttpHeaders headers = getHeaders();
			HttpEntity<String> authenticationEntity = new HttpEntity<String>(requestBody, headers);
			try {
				ResponseEntity<JwtAuthResponse> Token = restTemplate.exchange(REGISTRATION_URL, HttpMethod.POST,authenticationEntity, JwtAuthResponse.class);
				if (Token.getStatusCode().equals(HttpStatus.OK)) {
					String token = "Bearer " + Token.getBody().getToken();
					System.out.println(token);
					HttpHeaders header = getHeaders();
					header.set("Authorization", token);
					System.out.println(token);
					HttpEntity<EmployeeDto> jwtEntity = new HttpEntity<EmployeeDto>(header);
					System.out.println("****************************************");
					ParameterizedTypeReference<List<EmployeeDto>> employeeDetailsList = new ParameterizedTypeReference<List<EmployeeDto>>() {

					};
					
					 ResponseEntity<EmployeeDto> specificEmployee = restTemplate.exchange(PARTIALDATA_SPECIFIC_EMPLOYEE+employeeId,
							HttpMethod.POST, jwtEntity, EmployeeDto.class);
					 System.out.println(PARTIALDATA_SPECIFIC_EMPLOYEE+"PARTIALDATA_SPECIFIC_EMPLOYEE");
					 System.out.println("details of specific employee******** "+specificEmployee);
					if (specificEmployee != null) {
						
						employeeDto = specificEmployee.getBody();
						System.out.println("BODY************ "+employeeDto);
						return employeeDto;
					}
				}

			} catch (Exception e) {
				System.out.println(e);

			}
			System.out.println("LIST OF EMPLOYEES************** "+employeeDto);
			return employeeDto;
		}
	
	
//	private JwtAuthRequest getAuthenticationUser() {
//		JwtAuthRequest user = new JwtAuthRequest();
//		user.setUserName("yogesh");
//		user.setPassword("1234");
//		return user;
//	}

	private HttpHeaders getHeaders() {
		HttpHeaders headers = new HttpHeaders();
		headers.set("Content-Type", MediaType.APPLICATION_JSON_VALUE);
		headers.set("Accept", MediaType.APPLICATION_JSON_VALUE);
		return headers;
	}

	private String getBody(final JwtAuthRequest user) throws JsonProcessingException {
		return new ObjectMapper().writeValueAsString(user);
	}
	

	
	
}
