<%-- 
    Document   : logout
    Created on : 24 Feb, 2021, 11:30:34 AM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
session.putValue("username","");
session.putValue("shopEmail","");
session.putValue("shopAddress","");
session.putValue("shopName","");
session.putValue("filterForCategory","");
session.putValue("filterForShop","");

            
response.sendRedirect("index.jsp");
%>

