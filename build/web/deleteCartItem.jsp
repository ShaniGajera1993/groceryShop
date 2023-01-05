<%-- 
    Document   : deleteCartItem
    Created on : 27 Feb, 2021, 3:54:44 PM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
try
{
 String id1 = request.getParameter("id");
 
 out.println(id1);
 
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
        Statement st= con.createStatement();
        String sqlDelete = "DELETE FROM cartdetails WHERE productID = "+id1;
        st.executeUpdate(sqlDelete);    
        response.sendRedirect("contact.jsp");
}
catch (Exception e)
{
  out.println(e.getMessage());

}

%>
