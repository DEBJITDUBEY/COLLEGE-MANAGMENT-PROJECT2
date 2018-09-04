<%-- 
    Document   : submit
    Created on : Aug 20, 2018, 9:18:59 AM
    Author     : Debjit
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
            
                       



<%
   
    String branch=(String)session.getAttribute("branch");  
    String year=(String)session.getAttribute("year"); 
    String sub=(String)session.getAttribute("sub"); 
    String name=(String)session.getAttribute("name");
    String mail=(String)session.getAttribute("mail"); 
    


Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/attendence";

String user = "root";

String password = "";
try 
{
Class.forName(driverName);

con = DriverManager.getConnection(url, user, password);
Statement stmt = con.createStatement();
String sql1 = "SELECT * from registeruser" +
                   " WHERE branch='"+branch+"' and adyr='"+year+"'";
   rs = stmt.executeQuery(sql1);
   %>
     <html>
<head>
	<title></title>

	<title>attendence page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>    
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>      
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="fonts.googleapis.com/css?family=Lato:400,900">
   
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Green Wheels Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
    <link rel="stylesheet" type="text/css" href="netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
</head>


<style type="text/css">.user-row {
    margin-bottom: 14px;
}

.user-row:last-child {
    margin-bottom: 0;
}

.dropdown-user {
    margin: 13px 0;
    padding: 5px;
    height: 100%;
}

.dropdown-user:hover {
    cursor: pointer;
}

.table-user-information > tbody > tr {
    border-top: 1px solid rgb(221, 221, 221);
}

.table-user-information > tbody > tr:first-child {
    border-top: 0;
}


.table-user-information > tbody > tr > td {
    border-top: 0;
}
.toppad
{margin-top:20px;
}</style>
 <body>
     <script src=" pdf/a.js"></script>
        
        
       <div class="well"style="height: 60px;background-color: orange">
      <p id="demo" style="color: white"></p>
      <script>
               var d = new Date();
               document.getElementById("demo").innerHTML = d;
               
               
               
           </script>
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
 <form action="addmarks4.jsp">
                                                                                              
                                                                                             
                                                                                                FIRST  SEASONAL	<input type="text" name="firstsessional" style="color:blue">
                                                                                                SECOND SEASONAL	<input type="text" name="secondsessional" style="color:blue">
                                                                                                 <%
   while(rs.next())
   {
  
  
    %>

                                       <input type="hidden" name="name" value="<% out.println(rs.getString(1));%>">
                                                          <input type="int" name="roll" value="<% out.println(rs.getString(5));%>">
                                                          <input type="hidden" name="branch" value="<% out.println(rs.getString(3));%>">
                                                                 <input type="hidden" name="sec" value="<% out.println(rs.getString(4));%>">
                                                                              <input type="hidden" name="adyr" value="<% out.println(rs.getString(6));%>">
											    <input type="hidden" name="mail" value="<% out.println(rs.getString(7));%>">
                    <%
   } 
  
    
       
     
                   }
catch(SQLException sqe)

{

out.println("home"+sqe);

}

%>

	<input type="submit" value="ADD NUMBER">
											
 
 </form>