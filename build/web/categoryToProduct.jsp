<%-- 
    Document   : categoryToProduct
    Created on : 26 Feb, 2021, 9:29:50 AM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String CategoryToProduct = request.getParameter("CategoryToProduct");
session.putValue("filterForShop","All");
session.putValue("filterForCategory",CategoryToProduct);

response.sendRedirect("products.jsp"); 

%>
