
package com.infy.leavetracker.controller;

import java.time.YearMonth;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.infy.leavetracker.dto.EmployeeDto;
import com.infy.leavetracker.dto.LeaveDetailsDto;
import com.infy.leavetracker.exception.LeaveDetailsException;
import com.infy.leavetracker.model.LeaveDetails;
import com.infy.leavetracker.model.User;
import com.infy.leavetracker.service.LeaveDetailsService;
import com.infy.leavetracker.serviceImpl.EmployeeService;

@Controller
public class MainController {

    private String employeeRole;
    private String loggedInEmployeeName;

    @Autowired
    private LeaveDetailsService service;

    @Autowired
    private EmployeeService employeeService;

    private static Logger logger = LoggerFactory.getLogger(MainController.class);

    @RequestMapping("/")
    public ModelAndView home(Model m) {
        logger.info("Inside Welcome page rendering in controller");
        m.addAttribute("employeeRole", employeeRole);
        m.addAttribute("loggedInEmployeeName", loggedInEmployeeName);
        return new ModelAndView("index", "", "");
    }

    @RequestMapping(value = "getUserDetails", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public void getUserDetails(@RequestBody User user) {

        employeeRole = user.getEmployeeRole();
        loggedInEmployeeName = user.getLoggedInEmployeeName();
        System.out.println(employeeRole + "IN GET USER************");
        System.out.println(loggedInEmployeeName + "IN GET USER**********");

    }

    @RequestMapping("/addLeaveDetails")
    @ResponseBody
    public ModelAndView addLeaveDetails(Model m) throws JsonProcessingException {
        System.out.println(employeeRole + "IN ADD USER************");
        System.out.println(loggedInEmployeeName + "IN ADD USER**********");

        logger.info("Inside view add leave details method in controller");

        List<EmployeeDto> EmployeeList = employeeService.getdata();

        System.out.println("LIST FROM PORTAL********" + EmployeeList);
        m.addAttribute("EmployeeList", EmployeeList);
        m.addAttribute("employeeRole", employeeRole);
        m.addAttribute("loggedInEmployeeName", loggedInEmployeeName);
        YearMonth yearMonth = YearMonth.now();
        String year = String.valueOf(yearMonth.getYear());
        String month = yearMonth.getMonth().toString().substring(0, 3).toUpperCase();
        m.addAttribute("title", "Add Leave Details");
        m.addAttribute("year", year);
        m.addAttribute("month", month);

        EmployeeDto emp = employeeService.getdata(loggedInEmployeeName);
        System.out.println(emp + "emp in controller");
        m.addAttribute("emp", emp);
        m.addAttribute("employeeRole", employeeRole);
        m.addAttribute("loggedInEmployeeName", loggedInEmployeeName);

        return new ModelAndView("addLeaveDetails", "command", new LeaveDetails());
    }

    @RequestMapping(value = "handle-addLeaveDetails", method = RequestMethod.POST)
    public ModelAndView handleAddLeave(@Valid @ModelAttribute("command") LeaveDetailsDto leaveDetailsDto,
            BindingResult result, Model m) throws LeaveDetailsException {
        logger.info("Inside add leave details method in controller");
        logger.info("Incoming leave details------" + leaveDetailsDto);

        String message = "";
        ModelAndView modelAndView = new ModelAndView();
        if (result.hasErrors()) {
            result.getFieldErrors().stream().forEach(error -> {
                System.out.println(error.getField() + ":" + error.getDefaultMessage());
            });

        }

        else {
            try {
                message = service.addLeaveDetails(loggedInEmployeeName, leaveDetailsDto);
                logger.info(message + " inside add leave details controller");
                m.addAttribute("message", message);
            } catch (LeaveDetailsException e) {
                e.printStackTrace();
            }

            modelAndView = new ModelAndView("addLeaveDetails", "command", leaveDetailsDto);

        }
        return new ModelAndView("redirect:/searchLeaveDetails");
    }

    @RequestMapping(value = "/searchLeaveDetailsUser", method = RequestMethod.GET)
    public ModelAndView searchLeaveDetailsUser(Model m) throws JsonProcessingException {

        EmployeeDto emp = employeeService.getdata(loggedInEmployeeName);
        m.addAttribute("employeeRole", employeeRole);
        m.addAttribute("loggedInEmployeeName", loggedInEmployeeName);
        m.addAttribute("emp", emp);

        return new ModelAndView("searchLeaveDetailsUser", "", "");
    }

    @RequestMapping(value = "/displayLeaveDetailsUser", method = RequestMethod.GET)
    public ModelAndView displayLeaveDetailsUser() {
        ModelAndView modelAndView = new ModelAndView("searchLeaveDetailsUser");
        modelAndView.addObject("message", "Hello World!");
        return modelAndView;
    }

    @RequestMapping("/getLeaveDetailsbyId/{srNo}")
    public ModelAndView getLeaveDetailsbyId(@PathVariable("srNo") Integer srNo, Model m) throws LeaveDetailsException {
        logger.info("Inside view method of getLeavedetails in controller");
        String message = "fail";
        try {
            logger.info("Outside view method of getLeaveDetails");
            LeaveDetails leaveDetails = service.getLeaveDetails(srNo);

            message = "success";
            m.addAttribute("message", message);
            m.addAttribute("leaveDetails", leaveDetails);
            m.addAttribute("employeeRole", employeeRole);
            m.addAttribute("loggedInEmployeeName", loggedInEmployeeName);

        } catch (LeaveDetailsException e) {
            e.printStackTrace();
        }

        return new ModelAndView("displayLeaveDetails", "", "");
    }

    @RequestMapping("/getLeaveDetailsbyId/updateLeaveDetails/{srNo}")
    public ModelAndView updateLeaveDetails(@PathVariable("srNo") Integer srNo, Model m) throws LeaveDetailsException {
        try {
            logger.info("Ouside update method in controller");
            LeaveDetails leaveDetails = service.getLeaveDetails(srNo);
            m.addAttribute("leaveDetails", leaveDetails);
            m.addAttribute("title", "Update Leave Details");
            m.addAttribute("employeeRole", employeeRole);
            m.addAttribute("loggedInEmployeeName", loggedInEmployeeName);
        } catch (LeaveDetailsException e) {
            e.printStackTrace();
        }

        return new ModelAndView("updateLeaveDetails", "command", new LeaveDetails());

    }

    @RequestMapping(value = "/getLeaveDetailsbyId/updateLeaveDetails/handle-updateLeaveDetails", method = RequestMethod.POST)
    public ModelAndView handleUpdateLeaveDetails(@Valid @ModelAttribute LeaveDetailsDto leaveDetailsDto,
            BindingResult result, Model m) {
        System.out.println("UPDATE LEAVE DETAILS CONTROLLER " + leaveDetailsDto.toString());
        String message = "";
        ModelAndView modelAndView = new ModelAndView();
        if (result.hasErrors()) {
            result.getFieldErrors().stream().forEach(error -> {
                System.out.println(error.getField() + ":" + error.getDefaultMessage());
            });

        }

        else {

            try {
                message = service.updateLeaveDetails(loggedInEmployeeName, leaveDetailsDto);
                logger.info(message + " inside handle update leave details method");
                m.addAttribute("message", message);
                m.addAttribute("employeeRole", employeeRole);
                m.addAttribute("loggedInEmployeeName", loggedInEmployeeName);
            } catch (LeaveDetailsException e) {
                e.printStackTrace();
            }

            modelAndView = new ModelAndView("handle-updateLeaveDetails", "command", leaveDetailsDto);

        }
        return new ModelAndView("redirect:/searchLeaveDetails");
    }

    @RequestMapping("handle-deleteLeaveDetails/{srNo}")
    public ModelAndView handleDeleteLeaveDetails(@PathVariable("srNo") Integer srNo, Model m) {
        logger.info("Inside handle delete method in controller");
        String message = "";
        try {
            message = service.deleteLeaveDetails(loggedInEmployeeName, srNo);
            logger.info(message + " inside handle delete leave details");
            m.addAttribute("message", message);
        } catch (LeaveDetailsException e) {
            e.printStackTrace();
        }

        return new ModelAndView("redirect:/searchLeaveDetails");

    }

    @RequestMapping("/getAllLeaveDetails")
    public String getAllLeaveDetails(Model m) {
        logger.info("Inside get all employees details method in controller");
        List<LeaveDetails> allLeaveDetails = service.getAllLeaveDetails();
        System.out.println(allLeaveDetails.toString());
        m.addAttribute("allLeaveDetails", allLeaveDetails);
        return "allLeaveDetails";

    }

    @RequestMapping("/searchLeaveDetails")
    public ModelAndView searchLeaveDetails(Model m) throws JsonProcessingException {

        logger.info("Inside Search leave details page rendering in controller");

        EmployeeDto emp = employeeService.getdata(loggedInEmployeeName);
        m.addAttribute("emp", emp);
        m.addAttribute("title", "Search Leave Details");
        m.addAttribute("employeeRole", employeeRole);
        m.addAttribute("loggedInEmployeeName", loggedInEmployeeName);
        return new ModelAndView("searchLeaveDetails", "", "");

    }

    @RequestMapping(value = "/handle-searchLeaveDetails", method = RequestMethod.POST)
    public ModelAndView handleSearchLeaveDetails(@ModelAttribute LeaveDetailsDto leaveDetails, Model m)
            throws LeaveDetailsException {
        String message = "success";
        logger.info("Inside handle search leave method in controller");
        System.out.println(leaveDetails + "FOR USERRRRRR");
        List<LeaveDetails> searchResult = service.searchLeaveDetails(leaveDetails);
        if (searchResult.size() <= 0) {
            message = "No results found";
            logger.info(message + " inside handle search leave details");
            // return new ModelAndView("searchLeaveDetails", "", "");
        }

        m.addAttribute("message", message);
        m.addAttribute("searchResult", searchResult);
        m.addAttribute("employeeRole", employeeRole);
        m.addAttribute("loggedInEmployeeName", loggedInEmployeeName);
        System.out.println(searchResult);

        return new ModelAndView("searchLeaveDetailsResult", "", "");
    }

    // @RequestMapping(value = "getEmpIdAuto", method = RequestMethod.POST, consumes
    // = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    @RequestMapping("getEmpIdAuto")
    public List<Integer> getEmployeeId() throws JsonProcessingException {
        List<Integer> employeeId = service.getEmployeeId();
        System.out.println(employeeId);
        return employeeId;
    }

    @RequestMapping("getAllEmployeeAuto")
    @ResponseBody
    public List<EmployeeDto> getAllEmployee() throws JsonProcessingException {
        List<EmployeeDto> employees = employeeService.getdata();
        System.out.println(employees);
        return employees;
    }

    @RequestMapping("getAllEmployeeNamesAuto")
    @ResponseBody
    public List<String> getAllEmployee(@RequestParam("term") String term) throws JsonProcessingException {
        List<EmployeeDto> employees = employeeService.getdata();
        List<String> employeeNames = employees.stream().map(EmployeeDto::getEmployeeName)
                .filter(name -> name.toLowerCase().contains(term.toLowerCase())).collect(Collectors.toList());
        return employeeNames;
    }
    
    @RequestMapping("getAllEmployeeIdAuto")
    @ResponseBody
    public List<String> getAllEmployeeId(@RequestParam("term") String term) throws JsonProcessingException {
        List<EmployeeDto> employees = employeeService.getdata();
        List<String> employeeIds = employees.stream()
                .filter(employee -> String.valueOf(employee.getEmployeeId()).contains(term))
                .map(employee -> String.valueOf(employee.getEmployeeId()))
                .collect(Collectors.toList());
        return employeeIds;
    }

}
