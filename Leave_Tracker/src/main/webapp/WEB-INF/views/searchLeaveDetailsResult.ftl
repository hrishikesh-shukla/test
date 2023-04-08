

<!DOCTYPE HTML>
<html>
   <head>
      <#setting number_format="computer">
      <#setting date_format="iso">
      <#setting datetime_format="iso">
      <#setting time_format="iso">
    
      <!-- Bootstrap CSS -->
      <link href=
         "https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
         rel="stylesheet" integrity=
         "sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
         crossorigin="anonymous" /> 
      <meta charset="UTF-8" />
      <link rel="stylesheet" type="text/css" href="resources/css/style.css"/>
 
  
 <link href="https://cdn.datatables.net/v/bs4-4.6.0/dt-1.13.4/datatables.min.css" rel="stylesheet"/> 
 
  <script src="https://cdn.datatables.net/v/bs4-4.6.0/dt-1.13.4/datatables.min.js"></script>

   </head>
   <#if employeeRole="[ROLE_ADMIN]">
 <link href="https://code.jquery.com/jquery-3.5.1.js">
<link href="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js">
   <body>
    
         <table   class=" table table-striped table-bordered text-nowrap" id="tableData" >
            <thead>
               <tr>
                  <th scope="col">Sr No</th>
                  <th scope="col">Employee Id</th>
                  <th scope="col">Employee Name</th>
                  <th scope="col">Country</th>
                  <th scope="col">Project Unit</th>
                  <th scope="col"> Month</th>
                  <th scope="col">Leave Start Date</th>
                  <th scope="col">Leave End Date</th>
                  <th scope="col">No. Of Days</th>
                    <th scope="col">Year</th>
                  <th scope="col">Team</th>
                              
               </tr>
            </thead>
            <tbody>
               <#list searchResult as searchResult>
               <tr>
                  
            
                 <!--  <td onclick="window.location.href = 'getLeaveDetailsbyId/' + ${searchResult.srNo}" style="cursor: pointer">${searchResult.srNo}</td>-->
                 <td onclick="window.location.href ='getLeaveDetailsbyId/' + ${searchResult.srNo}" style="cursor: pointer;color:blue">${searchResult.srNo}</td> 
                  <!--   <td><a href="${'updateLeaveDetails/' + searchResult.srNo}">${searchResult.srNo}</a></td>--> 
<!--        <td><a href="${'getLeaveDetailsbyId/' + searchResult.srNo}" style="text-decoration:none">${searchResult.srNo}</a></td>  -->    
                  <td>${searchResult.employeeId}</td>
                  <td>${searchResult.name}</td>
                  <td>${searchResult.country}</td>
                  <td>${searchResult.projectUnit}</td>
                  <td>${searchResult.month}</td>
                  <td>${searchResult.leaveStartDate}
                  <td>${searchResult.leaveEndDate}
                  <td> ${searchResult.noOfDays}</td>
                    <td>${searchResult.year}</td>
                  <td>${searchResult.team}</td>
                  
               </tr>
               </#list>
            </tbody>
         </table>
      </div>
     
      <script>
      $(document).ready(function () {
    $('#tableData').DataTable({
        lengthMenu: [
        	 [5, 10, 15, -1],
            [5, 10, 15, 'All'],
        ],
    });
});
      </script>  
      <script src="https://unpkg.com/xlsx/dist/xlsx.full.min.js"></script>
   <script>
    function exportToExcel(filename = 'LeaveDetails') {

        var wb = XLSX.utils.book_new();

        var ws = XLSX.utils.table_to_sheet(document.getElementById('tableData'));

        XLSX.utils.book_append_sheet(wb, ws, filename);
                XLSX.writeFile(wb, filename + '.xlsx');
    }
</script>
    <script>
function monthwiseExport() {
  var table = document.getElementById('tableData');
  var data = {};
  
  // Collect data for each month
  for (var i = 1; i < table.rows.length; i++) {
    var row = table.rows[i];
    var month = row.cells[5].innerHTML;
   
    if (!(month in data)) {
      data[month] = [];
    }
    
    var rowData = {
      'Sr No': row.cells[0].innerHTML,
      'Employee Id': row.cells[1].innerHTML,
      'Employee Name': row.cells[2].innerHTML,
      'Country': row.cells[3].innerHTML,
      'Project Unit': row.cells[4].innerHTML,
      'Month': row.cells[5].innerHTML,
      'Leave Start Date': row.cells[6].innerHTML,
      'Leave End Date': row.cells[7].innerHTML,
      'No. Of Days': row.cells[8].innerHTML,
      'Year': row.cells[9].innerHTML,
      'Team': row.cells[10].innerHTML
    };
    
    data[month].push(rowData);
  }
  
  // Create workbook and add sheets for each month
  var wb = XLSX.utils.book_new();
  
  for (var month in data) {
    var ws = XLSX.utils.json_to_sheet(data[month]);
    XLSX.utils.book_append_sheet(wb, ws, month);
  }
  
  // Save workbook as Excel file
  XLSX.writeFile(wb, 'MonthwiseLeaveDetails.xlsx');
}

</script>


      <div class="text-center">
      <button class="btn btn-success" onclick="exportToExcel()">Export to Excel</button>&nbsp;&nbsp;
      <button class="btn btn-success" onclick="monthwiseExport()">Monthwise Excel</button>
   </div>
      <br><br>
      <#else>
      <link href="https://code.jquery.com/jquery-3.5.1.js">
<link href="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js">

<body>
  <div class="container text-center mt-3" style="margin-left:10%,margin-right:20%">
    <h1 style="margin-left:80px;margin-right:100px">Leave Details Result</h1>
    <br> <br>
    <div>
    </div>
    <table class=" table table-striped table-bordered text-nowrap" " id="tableData">
      <thead>
        <tr>
         <th scope="col">Leave Id</th>
          <th scope="col"> Month</th>
          <th scope="col">Leave Start Date</th>
          <th scope="col">Leave End Date</th>
          <th scope="col">No. Of Days</th>
          <th scope="col">Year</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
        <#list searchResult as searchResult>
          <tr>
            <td>${searchResult.srNo}</td>
            <td>${searchResult.month}</td>
            <td>${searchResult.leaveStartDate}
            <td>${searchResult.leaveEndDate}
            <td> ${searchResult.noOfDays}</td>
            <td>${searchResult.year}</td>
             <td class="withdraw-btn">
             <button class="btn btn-secondary"  onclick="window.location.href ='getLeaveDetailsbyId/' + ${searchResult.srNo}">Withdraw</button>
            </td>
          </tr>
        </#list>
      </tbody>
    </table>

  <!-- <script>
      $(document).ready(function () {
    $('#tableData').DataTable({
        lengthMenu: [
        	 [5, 10, 15, -1],
            [5, 10, 15, 'All'],
        ],
    });
});
      </script> -->
    
    <br><br>
    </#if>
   </body>
</html>