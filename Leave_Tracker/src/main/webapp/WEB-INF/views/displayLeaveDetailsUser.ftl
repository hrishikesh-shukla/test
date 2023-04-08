<!DOCTYPE html>
<html>
   <head>
      <#setting number_format="computer">
      <#setting date_format="iso">
      <#setting datetime_format="iso">
      <#setting time_format="iso">
      <#include '*/base.ftl'>
      <meta charset="ISO-8859-1">
      
      <title>Leave Details</title>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
      <script src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <link href="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.css" rel="stylesheet"/>
   </head>
  
   <body>
      <div class="container text-center">
         <h1>Leave Details</h1>
         <br>
         <div class="container" style="text-align:left">
            <table class="center table table-striped table-bordered text-nowrap" >
               <tbody>
                  <tr>
                     <th>Employee Id</th>
                     <td> ${leaveDetails.employeeId}</td>
                  </tr>
                  <tr>
                     <th>Employee Name</th>
                     <td> ${leaveDetails.name} </td>
                  </tr>
                  <tr>
                     <th>Country</th>
                     <td value="${leaveDetails.country}">
                        ${leaveDetails.country}
                     </td>
                  </tr>
                  <tr>
                     <th>Project Unit</th>
                     <td> ${leaveDetails.projectUnit}</td>
                  </tr>
                  <tr>
                     <th>Month</th>
                     <td> ${leaveDetails.month}</td>
                  </tr>
                  <tr>
                     <th>Year</th>
                     <td> ${leaveDetails.year} </td>
                  </tr>
                  <tr>
                     <th>Leave Start Date</th>
                     <td> ${leaveDetails.leaveStartDate}</td>
                  </tr>
                  <tr>
                     <th>Leave End Date</th>
                     <td> ${leaveDetails.leaveEndDate}</td>
                  </tr>
                  <tr>
                     <th>No. Of Days</th>
                     <td> ${leaveDetails.noOfDays}</td>
                  </tr>
                  <tr>
                     <th>Team</th>
                     <td> ${leaveDetails.team}</td>
                  </tr>
                  <tr>
                     <th>Comments</th>
                     <td> ${leaveDetails.comments}</td>
                  </tr>
               </tbody>
            </table>
         </div>
         <div class="container text-center" style="margin-bottom:15px;margin-top:15px">
          
            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal">Withdraw</button>
            
         </div>
         <br> <br>
      </div>
      
      <!-- Delete Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="deleteModalLabel">Confirm Delete</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Are you sure you want to withdraw this leave record?
      </div>
      <div class="modal-footer">
       
        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="redirect()">No</button>

        <a href="${'handle-deleteLeaveDetails/' + leaveDetails.srNo}" class="btn btn-danger" id="confirm-delete">Yes</a>
      </div>
    </div>
  </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script>
$("#deleteModal .modal-footer .btn-danger").click(function(event) {
  event.preventDefault();
  var href = $(this).attr('href'); // get the link address
  var leaveStartDate = new Date("${leaveDetails.leaveStartDate}"); 
  var currentDate = new Date(); // get current date
  if (leaveStartDate > currentDate) { 
    $.ajax({
      url: href,
      success: function(result) {
        Toastify({
          text: "Leave deleted successfully!",
          duration: 3000,
          gravity: "bottom",
          position: "center",
          style:{
            background: "#CCCCCC",
            color: "#000",
            boxShadow: "0 0 10px rgba(0,0,0,0.5)"
          },
        }).showToast();
        setTimeout(function() {
          window.location.href = '/Leave_Tracker_Backend/searchLeaveDetailsUser'; 
        }, 3000);
      }
    });
  } else {
    Toastify({
      text: "Cannot delete leave as the leave start date has passed!",
      duration: 3000,
      gravity: "bottom",
      position: "center",
      style:{
        background: "#CCCCCC",
        color: "#000",
        boxShadow: "0 0 10px rgba(0,0,0,0.5)"
      },
    }).showToast();
     setTimeout(function() {
          window.location.href = '/Leave_Tracker_Backend/searchLeaveDetailsUser'; // corrected URL
        }, 3000);
  }
});

</script>

<script>
function redirect() {
  window.location.href = '/Leave_Tracker_Backend/searchLeaveDetailsUser';
}
</script>


   
      
   </body>
</html>