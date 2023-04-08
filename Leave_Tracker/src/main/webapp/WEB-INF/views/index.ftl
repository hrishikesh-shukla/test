<html>
   <body>
      <head>
         <!-- Required meta tags -->
         <meta charset="utf-8">
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
         <!-- Bootstrap CSS -->
         <link href=
            "https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
            rel="stylesheet" integrity=
            "sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
            crossorigin="anonymous" />
         <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
         <!-- Optional JavaScript -->
         <!-- jQuery first, then Popper.js, then Bootstrap JS -->
         <#include '*/base.ftl'>
         
      </head>
      <div class="container mt-5"></div>
      <div class="row">
         <div class="col-md-12">
            <h1 class="text-center mb-3">Welcome to Leave Tracker</h1>
         </div>
      </div>
      <div class="container mt-5">
         <div class="row ">
            <div class="col-md-5 mx-auto text-center" >
               <div class="card" >
                  <div class="card-body  p-3 pb-4 bg-light text-dark" style="background-repeat: no-repeat; background-size: cover; background-position: center;">
                     <h2 class="card-title mb-4" style="font-size: small;">Add Leave Details</h2>
                     <p class="card-text" style="font-size: larger;">Add your leave details here</p>
                     <a href="addLeaveDetails" class="btn btn-primary">Add Leave Details</a>
                  </div>
               </div>
            </div>
            <div class="col-md-5 mx-auto text-center">
               <div class="card">
                  <div class="card-body  p-3 pb-4 bg-light text-dark" style=" background-repeat: no-repeat; background-size: cover; background-position: center;">
                     <h2 class="card-title mb-4" style="font-size: small;">Search Leave Details</h2>
                     <p class="card-text" style="font-size: larger;">Search for your leave details here</p>
                     <a href="searchLeaveDetails" class="btn btn-primary">Search Leave Details</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!----added script-->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/4.1.1/crypto-js.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      
    <script>
  $(document).ready(function() {
   
    const secretKey = 'eqinsq$73';
    const queryParams = new URLSearchParams(window.location.search);
    const encodedData = queryParams.get('data');
    const bytes = CryptoJS.AES.decrypt(encodedData, secretKey);
    const decryptedData = JSON.parse(bytes.toString(CryptoJS.enc.Utf8));

  
    for (const [key, value] of Object.entries(decryptedData)) {
      const stringValue = typeof value === 'string' ? value.replace(/"/g, '') : JSON.stringify(value);
      localStorage.setItem(key, stringValue);
    }

   
    const employeeRole = localStorage.getItem('employeeRole');
    const loggedInEmployeeName = localStorage.getItem('loggedInEmployeeName');
    console.log(employeeRole);
    console.log(loggedInEmployeeName);
    const postData = {
      employeeRole: employeeRole,
      loggedInEmployeeName: loggedInEmployeeName
    };
    const jsonData = JSON.stringify(postData);

    
    $.ajax({
      url: 'getUserDetails',
      type: 'POST',
      data: jsonData,
      contentType: 'application/json',
      success: function(response) {
        console.log('Data sent successfully');
      },
      error: function(xhr, status, error) {
        console.error('Error sending data:', error);
      }
    });
  });
</script>

   </body>
</html>