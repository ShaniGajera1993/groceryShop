<%-- 
    Document   : editProductToDb
    Created on : 3 Mar, 2021, 1:04:24 PM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String pID=request.getParameter("id");
String pName=request.getParameter("pName");
String pPrice=request.getParameter("pPrice");
String stock=request.getParameter("pStock");
String pDescription=request.getParameter("pDescription");

Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
        Statement st= con.createStatement();
        String update = "UPDATE productsdetails SET   productName='"+pName+"', productPrice='"+pPrice+"' , stock='"+stock+"' ,productDescription='"+pDescription+"' WHERE productID ="+pID;
        st.executeUpdate(update);
        response.sendRedirect("adminProduct.jsp");

%>
