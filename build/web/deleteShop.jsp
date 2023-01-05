<%-- 
    Document   : deleteShop
    Created on : 28 Feb, 2021, 8:41:25 AM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
try
{
 String email = request.getParameter("shopEmail");
 
 
 
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
        Statement st= con.createStatement();
        String sqlDelete = "DELETE FROM shopowners WHERE email = "+email;
        st.executeUpdate(sqlDelete);    
        response.sendRedirect("allshop.jsp");
}
catch (Exception e)
{
  out.println(e.getMessage());

}

%>
