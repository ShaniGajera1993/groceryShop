<%-- 
    Document   : deliveryBoy-login-pro
    Created on : 2 Mar, 2021, 7:46:28 AM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String email=request.getParameter("email");
String dPhone=request.getParameter("Mobile");
Class.forName("com.mysql.jdbc.Driver");


java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from deliveryboydetails where dBoyEmail='"+email+"' and dBoyPhone='"+dPhone+"'");
try{
rs.next();
            if(rs.getString("dBoyPhone").equals(dPhone)  && rs.getString("dBoyEmail").equals(email))
            {  
            session.putValue("deliveryBoyEmail",email);
            
             
            
            response.sendRedirect("deliveryPage.jsp");
            }
            else
            {
                 session.putValue("deliveryLoginError","1");
            response.sendRedirect("index.jsp");
            }
}
catch (Exception e) {
 session.putValue("deliveryLoginError","1");
response.sendRedirect("index.jsp");  
out.println(e.getMessage());
}
%>

