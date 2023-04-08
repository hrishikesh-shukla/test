<!DOCTYPE html>
<html>
   <head>
      <#include '*/base.ftl'>
      <link rel="stylesheet" href="/style/style.css">
      <meta charset="ISO-8859-1">
      <#setting number_format="computer">
      <#setting date_format="iso">
      <#setting datetime_format="iso">
      <#setting time_format="iso">
   </head>
   <body>
      <div class="text-center mb-3 mt-4">
         <h3>Error</h3>
         <h4>${error.errorMessage}</h4>
         <h4>${error.errorCode}</h4>
         <h4>${error.timestamp}</h4>
      </div>
   </body>
</html>