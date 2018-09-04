<%-- 
    Document   : teacherslogin2
    Created on : Jul 23, 2018, 10:20:15 AM
    Author     : Debjit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Home</title>

</head>

<body>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/attendence";

String user = "root";

String password = "";
  String branch=request.getParameter("utype1");
try 
{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, password);
Statement stmt = con.createStatement();
String sql1 = "SELECT * from teachersprofile " +
                   " WHERE mail='"+mail1+"' and Password='"+pass1+"' and branch='"+branch+"'";
   rs = stmt.executeQuery(sql1);
   while(rs.next())
   {
    %>
            <jsp:forward page="marks1.jsp" />
                    <%
   } 
  
    
       
     
                   }
catch(SQLException sqe)

{

out.println("home"+sqe);

}

%>
