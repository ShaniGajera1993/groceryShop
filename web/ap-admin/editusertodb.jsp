<%-- 
    Document   : editProductToDb
    Created on : 3 Mar, 2021, 1:04:24 PM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String userfname=request.getParameter("userfname");
String userlname=request.getParameter("userlname");
String address=request.getParameter("address");
String password=request.getParameter("password");
String email=(String)session.getValue("email");
Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
        Statement st= con.createStatement();
        String update = "UPDATE userdetails SET   userfname='"+userfname+"' , userlname='"+userlname+"' ,address='"+address+"',password='"+password+"' WHERE  useremail='"+email+"'";
        st.executeUpdate(update);
        response.sendRedirect("allUser.jsp");

%>
<%--<%=sName%><%=sAdress%>%

<%=sEmail%><%=sPassword%>--%>