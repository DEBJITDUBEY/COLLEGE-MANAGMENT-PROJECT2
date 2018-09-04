<%-- 
    Document   : marks1
    Created on : Jul 23, 2018, 9:48:24 AM
    Author     : Debjit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>    
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>      
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="fonts.googleapis.com/css?family=Lato:400,900">
    <link rel="stylesheet" type="text/css" href="netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">

        
        
    </head>
    <body>
        	<div class="well" style="height: 40px;background-color: orange">
      <div class="row">
<div class="col-sm-10">
			<p id="demo" style="color: white"></p>
			<script>
               var d = new Date();
               document.getElementById("demo").innerHTML = d;
           </script>
       </div>
       <div class="col-sm-2">
         
         <p >
          <a href="admin.html" style="color: white">admin</a>

         </p>
       </div>
     </div>
     </div>
       <div class="well" style="border-color: blue;background-color: green">
       	<div class="row">
       		<div class="col-sm-4"></div>
       		<div class="col-sm-4" style="color: white;font-size: 14px">
       			BENGAL COLLEGE OF ENGINNERING AND TECHNOILOGY
       			 

       		</div>
       		<div class="col-sm-4"></div>
       	</div>


       </div>
        <div class="well">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                  <a href="addmarks.jsp?email=<% out.print((String)session.getAttribute("mail"));%>" id="projects">ADD MARKS</a>
                </div>
            </div>
        </div>
      
    </body>
</html>
