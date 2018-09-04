<%-- 
    Document   : registration
    Created on : Jul 11, 2018, 10:46:16 AM
    Author     : user
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String name1 =request.getParameter("uname1");
String name2 =request.getParameter("uname2");
  String mail=request.getParameter("umail");
    String mobno=request.getParameter("umobno");
  String pass=request.getParameter("upass");
  String birthday=request.getParameter("ubday");
  String gender=request.getParameter("ugender");
  out.println(name1);
  out.println(name2);
  out.println(mail);
  out.println(mobno);
  out.println(pass);
   out.println(birthday);
    out.println(gender);
    
%>
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



String sql = "select usertype from registeruser";



try {

Class.forName(driverName);

con = DriverManager.getConnection(url, user, password);
if(con!=null)
      out.print("ok");
ps=con.prepareStatement("insert into registeruser values(?,?,?,?,?,?,?)");  
  
ps.setString(1,name1);
ps.setString(2,name2);
ps.setString(3,mail); 
ps.setString(4,mobno);
ps.setString(5,pass); 
ps.setString(6,birthday); 
ps.setString(7,gender);           
int i=ps.executeUpdate();  
if(i>0)  
out.print("You are successfully register...");  


}

catch(SQLException sqe)

{

out.println("home"+sqe);

}

%>
