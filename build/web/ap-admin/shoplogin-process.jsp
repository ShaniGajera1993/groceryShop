<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String email=request.getParameter("email");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from admin where email='"+email+"' and password='"+password+"'");
try{
rs.next();
            if(rs.getString("password").equals(password)  && rs.getString("email").equals(email))
            { 
           session.putValue("shopEmail",email);
            
           
            response.sendRedirect("allUser.jsp");
            }
            else
            {
            response.sendRedirect("index.jsp");
            }
}
catch (Exception e) {
 session.putValue("errorshopadminlogin","1");
response.sendRedirect("index.jsp");  


e.printStackTrace();
}
%>

