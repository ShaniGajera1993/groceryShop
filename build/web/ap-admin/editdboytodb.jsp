<%-- 
    Document   : editProductToDb
    Created on : 3 Mar, 2021, 1:04:24 PM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String dFName=request.getParameter("dFName");
String dLName=request.getParameter("dLName");
String dEmail=request.getParameter("dEmail");
String dPhone=request.getParameter("dPhone");

Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
        Statement st= con.createStatement();
        String update = "UPDATE deliveryboydetails SET   dBoyFname='"+dFName+"' , dBoyPhone='"+dPhone+"' ,dBoyLName='"+dLName+"' WHERE  dBoyEmail='"+dEmail+"'";
        st.executeUpdate(update);
        response.sendRedirect("allDeliveryBoy.jsp");

%>
<%--<%=sName%><%=sAdress%>%

<%=sEmail%><%=sPassword%>--%>