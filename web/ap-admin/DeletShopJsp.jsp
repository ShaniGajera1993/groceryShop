<%-- 
    Document   : DeletUserJsp
    Created on : 3 Mar, 2021, 10:52:48 AM
    Author     : Parth savaliya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<%

String Email=request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");


String sql="DELETE from shopowners where email=?";
 PreparedStatement st = con.prepareStatement(sql);
            st.setString(1,Email);

 int rowsInserted = st.executeUpdate();
 con.close();
 
response.sendRedirect("allShop.jsp");
%>