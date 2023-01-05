<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String email=request.getParameter("username");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from userdetails where useremail='"+email+"' and password='"+password+"'");
try{
rs.next();
            if(rs.getString("password").equals(password)  && rs.getString("useremail").equals(email))
            {
               
            session.putValue("username",email);
             session.putValue("usernameShopAdmin","");
             session.putValue("filterForCategory","All");
             session.putValue("filterForShop","All");
            
            response.sendRedirect("index.jsp");
            }
            else
            {
            response.sendRedirect("login.jsp");
            }
}
catch (Exception e) {
 session.putValue("errors","1");
response.sendRedirect("login.jsp");  


e.printStackTrace();
}
%>
