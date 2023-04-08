<!DOCTYPE html>
<html>
   <head>
      <#include '*/base.ftl'>
      <link rel="stylesheet" href="/style/style.css">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
      <script src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <meta charset="ISO-8859-1">
      <#setting number_format="computer">
      <#setting date_format="iso">
      <#setting datetime_format="iso">
      <#setting time_format="iso">
   </head>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.css" rel="stylesheet"/>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.js"></script>
   <body>
      <div id="login">
         <div className="row">
            <div class="card col-md-3 offset-md-2 mt-3 mb-3" style="margin-top: 30px; width: 65%">
               <h3 class="text-center" style="margin-bottom: 4px; margin-top: 5px">Update Leave Details</h3>
               <label className="form-group " style="text-align:center;font-size:15px;margin-bottom: 10px"><span class="required-asterisk" style="color:red">*</span>indicates mandatory fields </label>
               <div className="card-body ">
                  <form id = "updateLeaveForm" action="handle-updateLeaveDetails" method="post">
                     <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="srNo">Sr No<span class="required-asterisk" style="color:red">*</span></label> 
                              <input type="number" readOnly=”true” readonly=”readonly” class="form-control" id="srNo"
                                 name="srNo" placeholder="Enter SrNo" value="${leaveDetails.srNo}">
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="employeeId">Employee Id <span class="required-asterisk" style="color:red">*</span></label> 
                              <input type="number" class="form-control" id="employeeId"
                                 name="employeeId" placeholder="Enter EmployeeId" value="${leaveDetails.employeeId}" readOnly>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group " style="margin-left:25px;margin-bottom:5px" >
                              <label for="name"> Employee Name <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="text" class="form-control" id=name name="name"
                                 placeholder="Enter Employee Name" value="${leaveDetails.name}" readOnly>
                              <span id="nameError" style="color:red"></span>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px" >
                              <label  for="country">Country <span class="required-asterisk" style="color:red">*</span></label>
                              <select
                                 type="text"
                                 class="form-control"
                                 className="form-group"
                                 name="country"
                                 id="country" readonly
                                 >
                                 
                                 <option value="${leaveDetails.country}" <#if leaveDetails.country=="India"> selected </#if>>India</option>
                                <option value="${leaveDetails.country}" <#if leaveDetails.country=="USA"> selected </#if>>USA</option>
                                <option value="${leaveDetails.country}" <#if leaveDetails.country=="Australia"> selected </#if>>Australia</option>
                                <option value="${leaveDetails.country}" <#if leaveDetails.country=="Germany"> selected </#if>>Germany</option>
                                <option value="${leaveDetails.country}" <#if leaveDetails.country=="France"> selected </#if>>France</option>
                              </select>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="projectUnit">Project Unit <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="text" class="form-control" id="projectUnit" name="projectUnit"
                                 placeholder="Enter Project Unit" value="${leaveDetails.projectUnit}" readOnly>
                              <span id="projectUnitError" style="color:red"></span>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="month">Month <span class="required-asterisk" style="color:red">*</span></label> 
                              <input type="text" class="form-control" id="month" name="month"
                                 placeholder="Enter Month" value="${leaveDetails.month}">
                              <span id="monthError" style="color:red"></span>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="year">Year <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="number" class="form-control" id="year" name="year"
                                 placeholder="Enter Year" value="${leaveDetails.year}">
                              <span id="yearError" style="color:red"></span>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="leaveStartDate">Leave Start Date <span class="required-asterisk" style="color:red">*</span></label> 
                              <input type="date" class="form-control" id="leaveStartDate" name="leaveStartDate"
                                 placeholder="" value="${leaveDetails.leaveStartDate}">
                              <span id="leaveStartDateError" style="color:red"></span>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="leaveEndDate">Leave End Date <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="date" class="form-control" id="leaveEndDate" name="leaveEndDate"
                                 placeholder="" value="${leaveDetails.leaveEndDate}">
                              <span id="leaveEndDateError" style="color:red"></span> 
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="noOfDays">No.Of Days <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="number" class="form-control" id="noOfDays" name="noOfDays" 
                                 placeholder="Enter No of days" value="${leaveDetails.noOfDays}">
                              <span id="noOfDaysError" style="color:red"></span>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="team" >Team</label> 
                              <select
                                 type="text"
                                 class="form-control"
                                 className="form-group"
                                 name="team"
                                 id="team" 
                                 value="${leaveDetails.team}"
                                 readOnly
                                 >
                                 <option value="${leaveDetails.team}" >
                                    ${leaveDetails.team}
                                 </option>
                                 <option value="VDI">VDI</option>
                                 <option value="Testing">Testing</option>
                                 <option value="Project Team">Project Team</option>
                              </select>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="comments">Comments</label>
                              <input type="text" class="form-control" id="comments" name="comments"
                                 placeholder="Enter Comments" value="${leaveDetails.comments}">
                           </div>
                        </div>
                        <div class="container text-center" style="margin-bottom:15px;margin-top:15px">
                           <button type="submit" class="btn btn-success"  value="Update">Update</button>&nbsp;&nbsp;	
                           <button type="reset" class="btn btn-danger">Cancel</button>	
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.min.js"></script>        
      <script>
         const startDateInput = document.getElementById("leaveStartDate");
         const endDateInput = document.getElementById("leaveEndDate");
         
         startDateInput.addEventListener("change", calculateDays);
         endDateInput.addEventListener("change", calculateDays);
         
         function calculateDays() {
           const startDate = new Date(startDateInput.value);
           const endDate = new Date(endDateInput.value);
         
           let diffInMs = endDate.getTime() - startDate.getTime();
           let diffInDays = Math.floor(diffInMs / (1000 * 60 * 60 * 24)) + 1;
         
           let weekends = 0;
           let days = new Date(startDate);
           while (days <= endDate) {
             let day = days.getDay();
             if (day === 6 || day === 0) {
               weekends++;
             }
             days.setDate(days.getDate() + 1);
           }
         
           diffInDays = diffInDays - weekends;
           if (diffInDays < 1) {
             diffInDays = 1;
           }
         
           const noOfDaysInput = document.getElementById("noOfDays");
           noOfDaysInput.value = diffInDays;
         }
      </script>
      <script>
         $(document).ready(function() {
             $('#updateLeaveForm').submit(function(e) {
                 e.preventDefault();
                 if ( validateAll()) {
                     Toastify({
                         text: "Leave details updated successfully!",
                         duration: 3000,
                         gravity: "bottom",
                         position: "center",
                        style: {
         background: "#CCCCCC",
         color: "#000",
         boxShadow: "0 0 10px rgba(0,0,0,0.5)"
         },
                     }).showToast();
                     $('#saveButton').prop('disabled', true);
                     $.post('/Leave_Tracker_Backend/getLeaveDetailsbyId/updateLeaveDetails/handle-updateLeaveDetails', $('#updateLeaveForm').serialize(), function() {
                         setTimeout(function() {
                             window.location.href = '/Leave_Tracker_Backend/searchLeaveDetails';
                         }, 2000);
                     });
                 }
                 else{
                  Toastify({
                         text: "Please fill mandatory details!",
                         duration: 3000,
                         gravity: "bottom",
                         position: "center",
                         style: {
         background: "#f2f2f2",
         color: "#000",
         boxShadow: "0 0 10px rgba(0,0,0,0.5)"
         },
                     }).showToast();
                     $('#saveButton').prop('disabled', true);
                     $.post('/Leave_Tracker_Backend/getLeaveDetailsbyId/updateLeaveDetails/handle-updateLeaveDetails', $('#updateLeaveForm').serialize(), function() {
                         
                     });
                 }
             });
         });
          
         var employeeNameField = document.getElementById("name");
         employeeNameField.addEventListener('input', validateEmployeeName);
         
         
         var leaveStartDateField = document.getElementById("leaveStartDate");
         leaveStartDateField.addEventListener('input', validateLeaveDates);
         
         var leaveEndDateField = document.getElementById("leaveEndDate");
         leaveEndDateField.addEventListener('input', validateLeaveDates);
            
         var projectUnitField = document.getElementById("projectUnit");
         projectUnitField.addEventListener('input', validateProjectUnit);
         
         var monthField = document.getElementById("month");
         monthField.addEventListener('input', validateMonth);
         
         var yearField = document.getElementById("year");
         yearField.addEventListener('input', validateYear);
         
         var noOfDaysField = document.getElementById("noOfDays");
         noOfDaysField.addEventListener('input', validateNoOfDays);
         
         function validateAll() {
             var isEmployeeNameValid = validateEmployeeName();
             var areLeaveDatesValid = validateLeaveDates();
             var isProjectUnitValid = validateProjectUnit();
             var isMonthValid = validateMonth();
             var isYearValid = validateYear();
             var areNoOfDays = validateNoOfDays();
             
             if (!isEmployeeNameValid || !areLeaveDatesValid || !isProjectUnitValid || !isMonthValid || !isYearValid || !areNoOfDays) {
              
                 return false;
             }
             
            
             return true;
         }
          function validateEmployeeName() {
             var employeeNameField = document.getElementById("name");
             var name = employeeNameField.value.trim();
             var nameError = document.getElementById("nameError");
             var errors = [];
         
             if (name === "") {
                 errors.push("Employee name is mandatory.");
             }
             
              else if (!/^[A-Za-z]+[ A-Za-z]*$/.test(name)) 
              { errors.push("Name should not contain numbers & special characters"); 
              }
             if (errors.length > 0) {
                 nameError.innerHTML = errors.join("<br>");
                 employeeNameField.focus();
                 return false;
             }
         
             nameError.innerHTML = "";
             return true;
                
         }
           
           function validateLeaveDates() {
             var leaveStartDateField = document.getElementById("leaveStartDate");
             var leaveEndDateField = document.getElementById("leaveEndDate");
             var leaveStartDate = leaveStartDateField.value.trim();
             var leaveEndDate = leaveEndDateField.value.trim();
             var leaveStartDateError = document.getElementById("leaveStartDateError");
             var leaveEndDateError = document.getElementById("leaveEndDateError");
             var errors = [];
         
             // Reset error messages
             leaveStartDateError.innerHTML = "";
             leaveEndDateError.innerHTML = "";
         
             if (leaveStartDate === "") {
                 errors.push("Please enter a leave start date.");
                 leaveStartDateError.innerHTML = "Please enter a leave start date.";
             }
         
             if (leaveEndDate === "") {
                 errors.push("Please enter a leave end date.");
                 leaveEndDateError.innerHTML = "Please enter a leave end date.";
             }
         
             var startDate = new Date(leaveStartDate);
             var endDate = new Date(leaveEndDate);
             
             if (startDate.getDay() === 6 || startDate.getDay() === 0) {
                 errors.push("Please select a leave start date that is not on a weekend.");
                 leaveStartDateError.innerHTML = "Please select a week day";
             }
         
             // Check if end date is on a weekend
             if (endDate.getDay() === 6 || endDate.getDay() === 0) {
                 errors.push("Please select a leave end date that is not on a weekend.");
                 leaveEndDateError.innerHTML = "Please select a week day";
             }
         
             if (startDate > endDate) {
                 errors.push("Leave end date cannot be before the leave start date.");
                 leaveEndDateError.innerHTML = "Leave end date cannot be before the leave start date.";
             }
         
             if (errors.length > 0) {
                 leaveStartDateField.focus();
                 return false;
             }
         
             return true;
         }
         function validateProjectUnit() {
             var projectUnitField = document.getElementById("projectUnit");
             var  projectUnit = projectUnitField.value.trim();
             var projectUnitError = document.getElementById("projectUnitError");
             var errors = [];
         
             if (projectUnit === "") {
                 errors.push("Project Unit is mandatory.");
             }
             if (errors.length > 0) {
                 projectUnitError.innerHTML = errors.join("<br>");
                 projectUnitField.focus();
                 return false;
             }
         
             projectUnitError.innerHTML = "";
             return true;
             
         }
         function validateMonth() {
             var monthField = document.getElementById("month");
             var  month = monthField.value.trim();
             var monthError = document.getElementById("monthError");
             var errors = [];
         
             if (month === "") {
                 errors.push("Month is mandatory.");
             }
             else if (month!== month.toString().substring(0, 3).toUpperCase()) 
     { errors.push("Month should be in format eg.(JAN)"); 
     }
             if (errors.length > 0) {
                 monthError.innerHTML = errors.join("<br>");
                 monthField.focus();
                 return false;
             }
         
             monthError.innerHTML = "";
             return true;
             
         }
         function validateYear() {
             var yearField = document.getElementById("year");
             var  year = yearField.value.trim();
             var yearError = document.getElementById("yearError");
             var errors = [];
         
             if (year === "") {
                 errors.push("Year is mandatory.");
             }
             if (errors.length > 0) {
                 yearError.innerHTML = errors.join("<br>");
                 yearField.focus();
                 return false;
             }
         
             yearError.innerHTML = "";
             return true;
             
         }
         function validateNoOfDays() {
             var noOfDaysField = document.getElementById("noOfDays");
             var  noOfDays = noOfDaysField.value.trim();
             var noOfDaysError = document.getElementById("noOfDaysError");
             var errors = [];
         
             if (noOfDays === "") {
                 errors.push("No of days are mandatory.");
             }
             if (errors.length > 0) {
                 noOfDaysError.innerHTML = errors.join("<br>");
                 noOfDaysField.focus();
                 return false;
             }
         
             noOfDaysError.innerHTML = "";
             return true;
             
         }
         
      </script>
   </body>
</html>