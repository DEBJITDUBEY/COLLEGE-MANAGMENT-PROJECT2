<%-- 
    Document   : home
    Created on : Jul 12, 2018, 9:29:40 PM
    Author     : user
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
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
<style>
#mySidenav a {
    position: absolute;
    left: -80px;
    transition: 0.3s;
    padding: 15px;
    width: 100px;
    text-decoration: none;
    font-size: 20px;
    color: white;
    border-radius: 0 5px 5px 0;
}

#mySidenav a:hover {
    left: 0;
}

#about {
    top: 200px;
    background-color: #4CAF50;
}

#blog {
    top: 260px;
    background-color: #2196F3;
}

#projects {
    top: 320px;
    background-color: #f44336;
}

#contact {
    top: 380px;
    background-color: #555
}
</style>
    </head>
    <body>
       
        
        
       <div class="well" style="height: 40px;background-color: orange">
           <div class="col-sm-10">
      <p id="demo" style="color: white"></p>
      <script>
               var d = new Date();
               document.getElementById("demo").innerHTML = d;
           </script>
           </div>
           <div class="col-sm-2">
               <i class="fa fa-user-circle" aria-hidden="true" style="font-size:20px">
                   <%   
  
String name=(String)session.getAttribute("name");  
     out.print("Hello "+name);  
  
%></i>
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
    
   <marquee direction = "right"> important news</marquee>

</div>


           <div class="well">
               <div class="row" style="font-size:50px">
                   <div class="col-sm-4"><a href="ruttine.jsp" id="blog">Ruttine</a></div>
                    <div class="col-sm-4"> <a href="profile.jsp?email=<% out.print((String)session.getAttribute("mail")); %>" >PROFILE</a></div>
                     <div class="col-sm-4"> <a href="marks.jsp?roll=<% out.print((String)session.getAttribute("roll")); %>">Marks</a>
</div>
                     
 
 
               </div>
               
              
           </div>



          
    </body>
</html>