<%-- 
    Document   : editProductToDb
    Created on : 3 Mar, 2021, 1:04:24 PM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String sName=request.getParameter("sName");
String sAdress=request.getParameter("sAddress");
String sEmail=request.getParameter("sEmail");
String sId=request.getParameter("sEmail");
String sPassword=request.getParameter("sPassword");

Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
        Statement st= con.createStatement();
        String update = "UPDATE shopowners SET   shopName='"+sName+"' , address='"+sAdress+"' ,password='"+sPassword+"' WHERE  email='"+sEmail+"'";
        st.executeUpdate(update);
        response.sendRedirect("allShop.jsp");

%>
<%--<%=sName%><%=sAdress%>%

<%=sEmail%><%=sPassword%>--%>