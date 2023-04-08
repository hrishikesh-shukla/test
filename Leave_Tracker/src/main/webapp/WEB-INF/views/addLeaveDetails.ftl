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
    <#if employeeRole="[ROLE_ADMIN]">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.css" rel="stylesheet"/>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.js"></script>
   <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
   <body>
      <div id="login">
         <div className="row">
            <div class="card col-md-3 offset-md-2 mt-3 mb-3" style="margin-top: 15px; width: 65%">
               <h3 class="text-center" style="margin-bottom: 4px; margin-top: 5px">Add Leave Details</h3>
               <label className="form-group " style="text-align:center;font-size:15px;margin-bottom: 10px"><span class="required-asterisk" style="color:red">*</span>indicates mandatory fields </label>
               <div className="card-body ">
                  <form id = "addLeaveFormAdmin" action="handle-addLeaveDetails" method="post">
                     <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div class="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="employeeId">Employee Id <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="number" class="form-control" id="employeeId" name="employeeId" placeholder="Enter Employee Id">
                              <span id="employeeIdError" style="color:red"></span>
                             <!-- <div id="employeeIdList"></div>-->
                              <div id ="showList">
                               <ul class ="list-group">
                                </ul>
                             </div>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="name"> Employee Name <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="text" class="form-control" id=name name="name"  
                                 placeholder="Enter Employee Name" >
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group " style="margin-left:25px;margin-bottom:5px" >
                              <label  for="country">Country <span class="required-asterisk" style="color:red">*</span></label>
                              <input
                                 type="text"
                                 class="form-control"
                                 className="form-group"
                                 name="country"
                                 id="country"
                                 placeholder="Enter Country Name"
                                 >
                              </input>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px" >
                              <label for="projectUnit">Project Unit <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="text" class="form-control" id="projectUnit" name="projectUnit"  
                                 placeholder="Enter Project Unit">
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="month">Month <span class="required-asterisk" style="color:red">*</span></label> 
                              <input type="text" class="form-control" id="month" name="month" value="${month}"
                                 placeholder="Enter Month">
                              <span id="monthError" style="color:red"></span>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="year">Year <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="number" class="form-control" id="year" name="year" value="${year}"
                                 placeholder="Enter Year">
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="leaveStartDate">Leave Start Date <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="date" class="form-control" id="leaveStartDate" name="leaveStartDate" placeholder="" >
                              <span id="leaveStartDateError" style="color:red"></span>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="leaveEndDate">Leave End Date <span class="required-asterisk" style="color:red">*</span></label> 
                              <input type="date" class="form-control" id="leaveEndDate" name="leaveEndDate" placeholder="">
                              <span id="leaveEndDateError" style="color:red"></span> 
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="noOfDays">No.Of Days <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="number" class="form-control" id="noOfDays" name="noOfDays"
                                 placeholder="Enter No of days">
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="team">Team</label> 
                              <input
                                 type="text"
                                 class="form-control"
                                 className="form-group"
                                 name="team"
                                 id="team"
                                 placeholder="Enter Team"
                                 >
                              </input>
                           </div>
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex">
                           <div className="form-group" style="margin-left:25px; margin-right:25px">
                              <label for="comments">Comments</label>
                              <input type="text" class="form-control" id="comments" name="comments"
                                 placeholder="Enter Comments">
                           </div>
                        </div>
                        <div class="container text-center" style="margin-bottom:15px;margin-top:15px">
                           <button type="submit" class="btn btn-success"  value="Save" >Save</button>&nbsp;&nbsp;
                           <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#cancelModal">Cancel</button>
                        </div>
                     </div>
                  </form>
                  <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="cancelModalLabel" aria-hidden="true">
                     <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                           <div class="modal-header">
                              <h5 class="modal-title" id="cancelModalLabel">Cancel Form Submission</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                              </button>
                           </div>
                           <div class="modal-body">
                              Are you sure you want to cancel the form submission?
                           </div>
                           <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                              <button type="button" class="btn btn-danger" onclick="window.location.href='/Leave_Tracker_Backend/'">Yes, Cancel</button>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            // Initialize autocomplete on employee name field
            $('input[name="employeeId"]').autocomplete({
                source: function (request, response) {
                    // Send AJAX request to fetch matching employee names from server
                    $.ajax({
                        url: 'getAllEmployeeIdAuto',
                        type: 'GET',
                        data: {
                            term: request.term
                        },
                        success: function (data) {
                            response(data);
                        }
                    });
                }
            });

            // Handle form submission

        });
    </script>
      
      
      <script>
         const startDateInput = document.getElementById("leaveStartDate");
         const endDateInput = document.getElementById("leaveEndDate");
         
         
         startDateInput.addEventListener("change", calculateDays);
         endDateInput.addEventListener("change", calculateDays);
         
         function calculateDays() {
           
           const startDate = new Date(startDateInput.value);
           const endDate = new Date(endDateInput.value);
         
           
           const diffInMs = Math.abs(endDate - startDate+1);
         
           
           const diffInDays = Math.ceil(diffInMs / (1000 * 60 * 60 * 24));
         
           
           const noOfDaysInput = document.getElementById("noOfDays");
           noOfDaysInput.value = diffInDays;
         }
      </script>
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
             $('#addLeaveFormAdmin').submit(function(e) {
                 e.preventDefault();
                 if ( validateAll()) {
                     Toastify({
                         text: "Leave details added successfully!",
                         duration: 2000,
                         gravity: "bottom",
                         position: "center",
                         style:{
         background: "#CCCCCC",
         color: "#000",
         boxShadow: "0 0 10px rgba(0,0,0,0.5)"
         },
                     }).showToast();
                     $('#saveButton').prop('disabled', true);
                     $.post('/Leave_Tracker_Backend/handle-addLeaveDetails', $('#addLeaveFormAdmin').serialize(), function() {
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
         background: "#CCCCCC",
         color: "#000",
         boxShadow: "0 0 10px rgba(0,0,0,0.5)"
         },
                     }).showToast();
                     $('#saveButton').prop('disabled', true);
                     $.post('/Leave_Tracker_Backend/handle-addLeaveDetails', $('#addLeaveFormAdmin').serialize(), function() {
                         setTimeout(function() {
                             window.location.href = '/Leave_Tracker_Backend/searchLeaveDetails';
                         }, 1000);
                     });
                 }
             });
         });
         
         
         var employeeIdField = document.getElementById("employeeId");
         employeeIdField.addEventListener('input', validateEmployeeId);
         
         
         var leaveStartDateField = document.getElementById("leaveStartDate");
         leaveStartDateField.addEventListener('input', validateLeaveDates);
         
         var leaveEndDateField = document.getElementById("leaveEndDate");
         leaveEndDateField.addEventListener('input', validateLeaveDates);
            
            
         var monthField = document.getElementById("month");
         monthField.addEventListener('input', validateMonth);
         
         
         function validateAll() {
             var isEmployeeIdValid = validateEmployeeId();
             var areLeaveDatesValid = validateLeaveDates();
              var isMonthValid = validateMonth();
              
             if (!isEmployeeIdValid || !areLeaveDatesValid || !isMonthValid) {
              
                 return false;
             }
             
            
             return true;
         }
         
         function validateEmployeeId() {
             var employeeIdField = document.getElementById("employeeId");
             var employeeId = employeeIdField.value.trim();
             var employeeIdError = document.getElementById("employeeIdError");
             var errors = [];
         
             if (employeeId === "") {
                 errors.push("Employee Id is mandatory.");
                 employeeIdField.focus();
             }
             if (errors.length > 0) {
                 employeeIdError.innerHTML = errors.join("<br>");
                 employeeIdField.focus();
                 return false;
             }
         
             employeeIdError.innerHTML = "";
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
                 return false;
             }
         
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
         
         
      </script>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
      <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   
<script>
 $(document).ready(function() {
	    // Initialize autocomplete on employee name field
	    $('input[name="name"]').autocomplete({
	        source: function(request, response) {
	            // Send AJAX request to fetch matching employee names from server
	            $.ajax({
	                url: 'getAllEmployeeNamesAuto',
	                type: 'GET',
	                data: {
	                    term: request.term
	                },
	                success: function(data) {
	                    response(data);
	                }
	            });
	        }
	    });
	    
	    // Handle form submission
	    
	});
</script>
   </body>
   <#else>
   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.css" rel="stylesheet"/>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.js"></script>
   <body>
      <div id="login">
         <div className="row">
            <div class="card col-md-3 offset-md-2 mt-3 mb-3" style="margin-top: 15px; width: 65%">
               <h3 class="text-center" style="margin-bottom: 4px; margin-top: 5px">Add Leave Details</h3>
               <label className="form-group " style="text-align:center;font-size:15px;margin-bottom: 10px"><span class="required-asterisk" style="color:red">*</span>indicates mandatory fields </label>
               <div className="card-body ">
                  <form id = "addLeaveForm" action="handle-addLeaveDetails" method="post">
                     <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div class="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="employeeId">Employee Id <span class="required-asterisk" style="color:red">*</span></label> 
                              <input type="number" class="form-control" id="employeeId" name="employeeId" placeholder="Enter Employee Id" value="${emp.employeeId}" readonly > 
                              <span id="employeeIdError" style="color:red"></span>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="name"> Employee Name <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="text" class="form-control" id=name name="name"  readOnly value="${emp.employeeName}" 
                                 placeholder="Enter Employee Name" >
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group " style="margin-left:25px;margin-bottom:5px" >
                              <label  for="country">Country <span class="required-asterisk" style="color:red">*</span></label>
                              <input
                                 type="text"
                                 class="form-control"
                                 className="form-group"
                                 name="country"
                                 id="country"
                                value="${emp.currentCountry}" readonly
                                 >
                                 
                              </input>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px" >
                              <label for="projectUnit">Project Unit <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="text" class="form-control" id="projectUnit" name="projectUnit"  readOnly value="${emp.projectUnit}"
                                 placeholder="Enter Project Unit">
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="month">Month <span class="required-asterisk" style="color:red">*</span></label> 
                              <input type="text" class="form-control" id="month" name="month" value="${month}"
                                 placeholder="Enter Month">
                                 <span id="monthError" style="color:red"></span>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="year">Year <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="number" class="form-control" id="year" name="year" value="${year}"
                                 placeholder="Enter Year">
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="leaveStartDate">Leave Start Date <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="date" class="form-control" id="leaveStartDate" name="leaveStartDate" placeholder="" >
                              <span id="leaveStartDateError" style="color:red"></span>
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="leaveEndDate">Leave End Date <span class="required-asterisk" style="color:red">*</span></label> 
                              <input type="date" class="form-control" id="leaveEndDate" name="leaveEndDate" placeholder="">
                              <span id="leaveEndDateError" style="color:red"></span> 
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex" >
                           <div className="form-group" style="margin-left:25px;margin-bottom:5px">
                              <label for="noOfDays">No.Of Days <span class="required-asterisk" style="color:red">*</span></label>
                              <input type="number" class="form-control" id="noOfDays" name="noOfDays"
                                 placeholder="Enter No of days">
                           </div>
                        </div>
                        <div class="form-group col-sm-6 flex-column d-flex">
                           <div className="form-group" style="margin-right:25px;margin-bottom:5px">
                              <label for="team">Team</label> 
                              <input
                                 type="text"
                                 class="form-control"
                                 className="form-group"
                                 name="team"
                                 id="team"
                                  readOnly
                                  value="${emp.team}"
                                 >
                                 
                              </input>
                           </div>
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex">
                           <div className="form-group" style="margin-left:25px; margin-right:25px">
                              <label for="comments">Comments</label>
                              <input type="text" class="form-control" id="comments" name="comments"
                                 placeholder="Enter Comments">
                           </div>
                        </div>
                        <div class="container text-center" style="margin-bottom:15px;margin-top:15px">
                           <button type="submit" class="btn btn-success"  value="Save" >Save</button>&nbsp;&nbsp;
                           <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#cancelModal">Cancel</button>
                        </div>
                     </div>
                  </form>
                  <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="cancelModalLabel" aria-hidden="true">
                     <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                           <div class="modal-header">
                              <h5 class="modal-title" id="cancelModalLabel">Cancel Form Submission</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                              </button>
                           </div>
                           <div class="modal-body">
                              Are you sure you want to cancel the form submission?
                           </div>
                           <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                              <button type="button" class="btn btn-danger" onclick="window.location.href='/Leave_Tracker_Backend/'">Yes, Cancel</button>
                           </div>
                        </div>
                     </div>
                  </div>
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
         
           
           const diffInMs = Math.abs(endDate - startDate+1);
         
           
           const diffInDays = Math.ceil(diffInMs / (1000 * 60 * 60 * 24));
         
           
           const noOfDaysInput = document.getElementById("noOfDays");
           noOfDaysInput.value = diffInDays;
         }
      </script>
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
             $('#addLeaveForm').submit(function(e) {
                 e.preventDefault();
                 if ( validateAll()) {
                     Toastify({
                         text: "Leave details added successfully!",
                         duration: 2000,
                         gravity: "bottom",
                         position: "center",
                         style:{
         background: "#CCCCCC",
         color: "#000",
         boxShadow: "0 0 10px rgba(0,0,0,0.5)"
         },
                     }).showToast();
                     $('#saveButton').prop('disabled', true);
                     $.post('/Leave_Tracker_Backend/handle-addLeaveDetails', $('#addLeaveForm').serialize(), function() {
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
         background: "#CCCCCC",
         color: "#000",
         boxShadow: "0 0 10px rgba(0,0,0,0.5)"
         },
                     }).showToast();
                     $('#saveButton').prop('disabled', true);
                     $.post('/Leave_Tracker_Backend/handle-addLeaveDetails', $('#addLeaveForm').serialize(), function() {
                         setTimeout(function() {
                             window.location.href = '/Leave_Tracker_Backend/searchLeaveDetails';
                         }, 1000);
                     });
                 }
             });
         });
         
         
         var employeeIdField = document.getElementById("employeeId");
         employeeIdField.addEventListener('input', validateEmployeeId);
         
         
         var leaveStartDateField = document.getElementById("leaveStartDate");
         leaveStartDateField.addEventListener('input', validateLeaveDates);
         
         var leaveEndDateField = document.getElementById("leaveEndDate");
         leaveEndDateField.addEventListener('input', validateLeaveDates);
            
            
var monthField = document.getElementById("month");
monthField.addEventListener('input', validateMonth);

         
         function validateAll() {
             var isEmployeeIdValid = validateEmployeeId();
             var areLeaveDatesValid = validateLeaveDates();
              var isMonthValid = validateMonth();
              
             if (!isEmployeeIdValid || !areLeaveDatesValid || !isMonthValid) {
              
                 return false;
             }
             
            
             return true;
         }
         
         function validateEmployeeId() {
             var employeeIdField = document.getElementById("employeeId");
             var employeeId = employeeIdField.value.trim();
             var employeeIdError = document.getElementById("employeeIdError");
             var errors = [];
         
             if (employeeId === "") {
                 errors.push("Employee Id is mandatory.");
                 employeeIdField.focus();
             }
             if (errors.length > 0) {
                 employeeIdError.innerHTML = errors.join("<br>");
                 employeeIdField.focus();
                 return false;
             }
         
             employeeIdError.innerHTML = "";
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
                 return false;
             }
         
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

         
      </script>
   </body>

</#if>
</html>