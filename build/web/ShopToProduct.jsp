<%-- 
    Document   : ShopToProduct
    Created on : 26 Feb, 2021, 8:47:48 AM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String shoTopProduct = request.getParameter("shoTopProduct");
session.putValue("filterForShop",shoTopProduct);
session.putValue("filterForCategory","All");
response.sendRedirect("products.jsp"); 
%>
