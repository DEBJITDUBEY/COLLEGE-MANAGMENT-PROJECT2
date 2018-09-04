<%-- 
    Document   : teacherregistration
    Created on : Jul 22, 2018, 11:51:01 PM
    Author     : Debjit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@page import="java.util.Random"%>

<%
    Random r=new Random();
        int b=r.nextInt(99999);
        String pass="TBC556"+b;
String name1 =request.getParameter("uname1");
  String mail=request.getParameter("umail");
    String mobno=request.getParameter("umobno");
   String type=request.getParameter("utype");
    out.println(name1);
  out.println(mail);
  out.println(mobno);
  out.println(type);
  
    
%>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/attendence";

String user = "root";

String password = "";



String sql = "select usertype from teachersprofile";



try {

Class.forName(driverName);

con = DriverManager.getConnection(url, user, password);
if(con!=null)
      out.print("ok");
ps=con.prepareStatement("insert into teachersprofile values(?,?,?,?,?)");  
  
ps.setString(1,name1);
ps.setString(3,mail); 
ps.setString(2,mobno);
ps.setString(4,type);
ps.setString(5,pass);          
int i=ps.executeUpdate();  
if(i>0)  
out.print("You are successfully register...");  


}

catch(SQLException sqe)

{

out.println("home"+sqe);

}

%>
