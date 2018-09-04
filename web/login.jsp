<%-- 
    Document   : login
    Created on : Jul 11, 2018, 1:38:17 PM
    Author     : user
--%>

<%-- 
    Document   : log
    Created on : Jun 25, 2018, 12:53:09 PM
    Author     : user
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
String mail1=request.getParameter("umail1");
  String pass1=request.getParameter("upass1");
  String roll=request.getParameter("uroll1");
try 
{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, password);
Statement stmt = con.createStatement();
String sql1 = "SELECT * from registeruser" +
                   " WHERE mail='"+mail1+"' and Password='"+pass1+"' and roll='"+roll+"'";
   rs = stmt.executeQuery(sql1);
   while(rs.next())
   {
  session.setAttribute("mail",mail1);  
    session.setAttribute("password",pass1);
    session.setAttribute("roll",roll);
    session.setAttribute("name",rs.getString("name"));
    %>
            <jsp:forward page="home.jsp" />
                    <%
   } 
  
    
       
     
                   }
catch(SQLException sqe)

{

out.println("home"+sqe);

}

%>

