
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
      <title>Search Leave Details</title>
   </head>
   <#if employeeRole="[ROLE_ADMIN]">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.css" rel="stylesheet"/>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.js"></script>
   <body>
      <div id="login">
         <div className="row">
            <div class="card col-md-10 p-3 mt-3" style="margin:0 auto" >
               <h3 class="text-center" style="margin-bottom: 4px; margin-top: 5px">Search Leave Details</h3>
               <div className="card-body" >
                 <form id="searchLeaveForm" action="handle-searchLeaveDetails" method="post">
    <div class="row">
        <div class="col-sm-3">
            <div class="form-group">
                <label for="employeeId">Employee Id</label> 
                <input type="number" class="form-control" id="employeeId" name="employeeId" placeholder="Enter EmployeeId">
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="name">Employee Name</label>
                <input type="text" class="form-control" id=name name="name" autocomplete="off" placeholder="Enter Employee Name">
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="country">Country</label>
                <select type="text" class="form-control" className="form-group" name="country" id="country">
                    <option value="">--- Select Country ---</option>
                    <option value="INDIA">India</option>
                    <option value="USA">USA</option>
                    <option value="AUSTRALIA">Australia</option>
                    <option value="CANADA">Canada</option>
                    <option value="GERMANY">Germany</option>
                    <option value="FRANCE">France</option>
                </select>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="projectUnit">Project Unit</label>
                <input type="text" class="form-control" id="projectUnit" name="projectUnit" placeholder="Enter Project Unit">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <div class="form-group">
                <label for="month">Month</label> 
                <input type="text" class="form-control" id="month" name="month" placeholder="Enter Month">
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="leaveStartDate">Leave Start Date</label>
                <input type="date" class="form-control" id="leaveStartDate" name="leaveStartDate" placeholder="">
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="team">Team</label>
                <select type="text" class="form-control" className="form-group" name="team" id="team">
                    <option value="">--- Select Team ---</option>
                    <option value="VDI">VDI</option>
                    <option value="TESTING">Testing</option>
                    <option value="PROJECT TEAM">Project Team</option>
                </select>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label>&nbsp;</label><br>
                <button type="submit" class="btn btn-success"value="Search">Search</button>&nbsp;&nbsp;
                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#cancelModal">Cancel</button>
            </div>
        </div>
    </div>
</form>
               
                 <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="cancelModalLabel" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                     <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title" id="cancelModalLabel">Cancel Form </h5>
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                           </button>
                        </div>
                        <div class="modal-body">
                           Are you sure you want to cancel ?
                        </div>
                        <div class="modal-footer">
                           <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                           <button type="button" class="btn btn-danger" onclick="window.location.href='/Leave_Tracker_Backend/'">Yes, Cancel</button>
                           
                        </div>
                     </div>
                  </div>
               </div>
                <div class="mt-3" id="table-container"></div>
            </div>
         </div>
      </div>
                 
       
      </div>
     
      <br><br>
 
      
   


<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- jQuery UI -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/smoothness/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>

 <script>
 $(document).ready(function() {
	    
	    $('input[name="name"]').autocomplete({
	        source: function(request, response) {
	            
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
	    
	   
	    
	});
</script>
<script>
$('#searchLeaveForm').submit(function(event) {
  event.preventDefault(); // prevent form from submitting normally
  
  // send AJAX request to server
  $.ajax({
    url: $(this).attr('action'),
    method: $(this).attr('method'),
    data: $(this).serialize(),
    success: function(data) {
      // update table-container with table HTML
      $('#table-container').html(data);
    }
  });
});
</script>
<#else>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.css" rel="stylesheet"/>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.js"></script>
   <body>
      <div id="login">
         <div className="row">
            <div class="card col-md-6  mt-5 pb-1" style="margin-left:400px; width: 40%">
               <h3 class="text-center" style="margin-bottom: 4px; margin-top: 5px">Search Leave </h3>
               <div className="card-body ">
                  <form  action="handle-searchLeaveDetails" method="post">
                     <!--  	<div class="row justify-content-between text-left">-->
                     <div className="form-group" style="margin-bottom:5px;margin-left:25px; margin-right:25px" >
                        <label for="employeeId">Employee Id</label> 
                        <input type="number" class="form-control" id="employeeId" value="${emp.employeeId}" readonly
                           name="employeeId" placeholder="Enter EmployeeId">
                     </div>
                     
                    
                   
                     <div className="form-group" style="margin-left:25px;margin-right:25px;margin-bottom:5px">
                        <label for="month">Month </label> 
                        <input type="text" class="form-control" id="month" name="month"
                           placeholder="Enter Month">
                     </div>
                      
                     <div className="form-group" style="margin-bottom:5px;margin-left:25px; margin-right:25px">
                        <label for="leaveStartDate">Leave Start Date </label>
                        <input type="date" class="form-control" id="leaveStartDate" name="leaveStartDate"
                           placeholder="">
                     </div>
                    
                     <div class="container text-center" style="margin-bottom:15px;margin-top:15px">
                        <button  type="submit" class="btn btn-success"  href="getAllLeaveDetails" value="Search">Search</button>&nbsp;&nbsp;
                       
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#cancelModal">Cancel</button>
                     </div>
               </div>


               </form>
               
   

       
            <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="cancelModalLabel" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                     <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title" id="cancelModalLabel">Cancel Form </h5>
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                           </button>
                        </div>
                        <div class="modal-body">
                           Are you sure you want to cancel ?
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
      <br><br>
 
       <script>
   $(document).ready(function() {
    $('#searchLeaveForm').submit(function(e) {
        e.preventDefault();
        $.post('/Leave_Tracker_Backend/handle-searchLeaveDetails', $('#searchLeaveForm').serialize(), function(data) {
            if ( message??) {
                window.location.href = '/Leave_Tracker_Backend/searchLeaveDetailsResult';
            } else {
                Toastify({
                    text: "No results found",
                    duration: 2000,
                    gravity: "bottom",
                    position: "center",
                    style:{
                        background: "#CCCCCC",
                        color: "#000",
                        boxShadow: "0 0 10px rgba(0,0,0,0.5)"
                    }
                }).showToast();
            }
        });
    });
});
   </script>  
   
</#if>
   </body>
</html>