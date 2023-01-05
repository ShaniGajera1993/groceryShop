

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%@page import="java.sql.*,java.util.*"%>
<%
String shopName=request.getParameter("shopName");
String address=request.getParameter("address");
String email=request.getParameter("email");
String password=request.getParameter("password");
try
{    
 
               Class.forName("com.mysql.jdbc.Driver");
               Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop", "root", "");
               Statement st=conn1.createStatement();
               int i=st.executeUpdate("insert into shopowners(shopName,address,email,password)values('"+shopName+"','"+address+"','"+email+"','"+password+"')");
               response.sendRedirect("allShop.jsp");
}
catch(Exception e)
{
 session.putValue("errorregistershop","1");
response.sendRedirect("registershop.jsp");
}
%>


