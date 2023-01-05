<%-- 
    Document   : incCart
    Created on : 3 Mar, 2021, 9:19:29 AM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<%
String  pID = request.getParameter("id");
String  quantity = request.getParameter("quantity");

int quan = Integer.parseInt(quantity) ;

quan = quan + 1;


try
{
     Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
        Statement st= con.createStatement();
        String update = "UPDATE cartdetails SET  quantity = '"+quan+"' WHERE productID = "+pID;
        st.executeUpdate(update);
        response.sendRedirect("contact.jsp");
}
catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}
       
%>
