

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String address=request.getParameter("address");
String password=request.getParameter("password");
try
{    
 
 Class.forName("com.mysql.jdbc.Driver");
   Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop", "root", "");
Statement st=conn1.createStatement();
int i=st.executeUpdate("insert into userdetails(userfname,userlname,useremail,address,password)values('"+fname+"','"+lname+"','"+email+"','"+address+"','"+password+"')");
response.sendRedirect("login.jsp");
}
catch(Exception e)
{
 session.putValue("errorregister","1");
response.sendRedirect("register.jsp");
}
%>

