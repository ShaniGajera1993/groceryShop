<%-- 
    Document   : addDelivery-process
    Created on : 1 Mar, 2021, 5:04:12 PM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("Fname");
String lname=request.getParameter("Lname");
String email=request.getParameter("email");
String phone=request.getParameter("Mobile");

try
{    
 
 Class.forName("com.mysql.jdbc.Driver");
   Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop", "root", "");
Statement st=conn1.createStatement();
int i=st.executeUpdate("insert into deliveryboydetails(dBoyFName,dBoyLName,dBoyEmail,dBoyPhone,task1,task2)values('"+fname+"','"+lname+"','"+email+"','"+phone+"','no','no')");
response.sendRedirect("AddDeliveyBoy.jsp");
}
catch(Exception e)
{
 
out.println(e.getMessage());
}
%>
