<%-- 
    Document   : addmarks3
    Created on : Jul 24, 2018, 12:09:40 AM
    Author     : Debjit
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String name1=(String)request.getParameter("name");
String roll1 =(String)request.getParameter("roll");
  String branch1=(String)request.getParameter("branch");
    String sec1=(String)request.getParameter("sec");
  String adyr1=(String)request.getParameter("adyr");
  String fs=(String)request.getParameter("firstsessional");
    String ss=(String)request.getParameter("secondsessional");
    String sub=(String)session.getAttribute("sub");
   String mail=(String)request.getParameter("mail");
    
    
  out.println(name1);
  out.println(roll1);
  out.println(branch1);
  out.println(sec1);
  out.println(adyr1);
  out.println(fs);
   out.println(ss);
     out.println(sub);
     out.println(mail);
  
   
    
%>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/attendence";

String user = "root";

String password = "";



String sql = "select usertype from marks";



try {

Class.forName(driverName);

con = DriverManager.getConnection(url, user, password);
if(con!=null)
      out.print("ok");
ps=con.prepareStatement("insert into marks values(?,?,?,?,?,?,?,?)");  
  
ps.setString(1,name1);
ps.setString(2,roll1);
ps.setString(3,branch1); 
ps.setString(5,adyr1); 
ps.setString(6,fs); 
ps.setString(7,ss);
ps.setString(4,sub);
ps.setString(8,mail);

int i=ps.executeUpdate();  

}

catch(SQLException sqe)

{

out.println("home"+sqe);

}

%>
