<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

           <!DOCTYPE html>
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

     <div class="well"   >
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8" style="color:red; font-size : 15px;">

      
       
   <%
               String roll=(String)session.getAttribute("roll");
               out.print(roll);
Connection con= null;
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
String sql2 = "SELECT * from marks" +
                   " WHERE roll='"+roll+"'";
       
                   
   rs = stmt.executeQuery(sql2);
   
  %>
   
                
                
             
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-bordered" style="background-color:black;color: yellow;">
    <thead>
      <tr>
      	<th>SUBJECT  </th>
        <th>FIRST SESSIONAL NUMBER</th>
        <th>SECOND SESSIONAL NUMBER</th>
        

           
      </tr>
    </thead>
    <tbody>
                <%
                while(rs.next())
  {
      %>
      <tr>
        <td align="center"><%out.print(rs.getString(4));%></td>
        <td align="center"><%out.print(rs.getString(6));%></td>
         <td align="center"><%out.print(rs.getString(7));%></td>
         
       
         
      </tr>
        <%
  }
 }
catch(SQLException sqe)
    {



}

                %> 
    </tbody>
  </table>
                   
                </div>
              </div>
            </div>
                 <div class="panel-footer">
                        
                        <span class="pull-right">
                            
                        </span>
                    </div>
                
                
                </div>

        </div>
                  <div class="col-sm-2"></div>     
                </div>
        </div>
     
</body>
</html>
     
       
       
  
                
                
            
            
            
            
            
