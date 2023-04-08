<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
       <#setting number_format="computer">
      <#setting date_format="iso">
      <#setting datetime_format="iso">
      <#setting time_format="iso">
      <title>Leave Tracker</title>
      <link href=
         "https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
         rel="stylesheet" integrity=
         "sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
         crossorigin="anonymous" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      
      <script>
       $(document).ready(function(){
    	  document.getElementById("EmpName").innerHTML="Name: "+localStorage.getItem("loggedInEmployeeName");
    	  if(localStorage.getItem("employeeRole")=="[ROLE_ADMIN]")
    		  document.getElementById("role").innerHTML="Role: Admin";
    	  else
    		  document.getElementById("role").innerHTML="Role: User";
    	  
      });
      
      function logout(){
    	  localStorage.removeItem("data");
    	  window.location.href="http://localhost:3000/logout"
      } 
      
      </script>
      <nav class="navbar navbar-expand-lg bg-dark navbar-dark" >
         <ul class="navbar-nav " >
            <a class="navbar-brand" href="http://localhost:3000/home" style="font-size:20px;text-align:center">
            <i class="fa fa-home" style="font-size:30px;color:white;padding-left:20px"></i>
            </a>
            <a class="navbar-brand" href="/Leave_Tracker_Backend/" style="font-size:20px;text-align:center">Leave Tracker</a>
            <a  class="nav-link active" href="/Leave_Tracker_Backend/addLeaveDetails" style="color:white;font-size:medium";> Add Leave Details </a>
            <a class="nav-link active" href="/Leave_Tracker_Backend/searchLeaveDetails" style="color:white;font-size: medium;"> Search Leave Details </a>     
         </ul>
         <ul class="navbar-nav"  style="padding-right:100px; position: absolute; right: 0;" >
            <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" href="#" id="rightDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <span>Welcome <i class="fa fa-user-circle-o" style="margin-left: 5px;"></i></span>
               <!-- <span></span> Welcome <i class="fa fa-user-circle-o"  ></i> -->
               </a>
               <div class="dropdown-menu" aria-labelledby="rightDropdown">
                  <a class="dropdown-item" href="#" id="EmpName"> </a>
                  <a class="dropdown-item" href="#" id="role"></a>
                  <a class="dropdown-item" onclick="logout()">Logout</a>
               </div>
            </li>
         </ul>
         </div>
      </nav>
     
      <footer class="footer" style="position:fixed; bottom: 0;left: 0;width: 100%;height: 25px;background-color: black; z-index:1100;text-align: center;color: white;font-size: 15px;padding-top:5px;">
         <div><span class="text-muted" style="">All Rights Reserved 2023 @Infosys</span></div>
      </footer>
      <!--      <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
         <a class="navbar-brand" href="/Leave_Tracker_Backend/"
           style="margin-left: 35px;font-size:20px;text-align:center;">Leave Tracker</a>
          <a  class="nav-link active" href="addLeaveDetails" style="color:white;font-size:medium" > Add Leave Details </a>
           <a class="nav-link active" href="searchLeaveDetails" style="color:white;font-size: medium;"> Search Leave Details </a>
           
          
         </nav>    -->
      <!--<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
         <a class="navbar-brand" style="margin-left: 35px; margin-top: 4px"- href="/Leave_Tracker_Backend/">Leave Tracker</a> 
         
         
         
         </nav> 
         
         
         <footer class="footer" style="position:fixed; bottom: 0;left: 0;width: 100%;height: 25px;background-color: black; z-index:1100;text-align: center;color: white;font-size: 15px;padding-top:5px;"><div><span class="text-muted" style="">All Rights Reserved 2023 @Infosys</span></div></footer>
         
           
         
         
         
         
         
         </head>
         <body>
         
         <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
         </script>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
         </script>-->
      </body>
</html>