<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%@page import="java.sql.*,java.util.*"%>
<%
    String shopEmail=(String)session.getValue("shopEmail");
    String shopName=(String)session.getValue("shopName");
    String shopAddress=(String)session.getValue("shopAddress");
    
    String pName=request.getParameter("pName");
    String pDescription=request.getParameter("pDescription");
    String pPrice=request.getParameter("pPrice");
    String category=request.getParameter("category");
    String pImage=request.getParameter("pImage");
    int stock=Integer.parseInt(request.getParameter("stock"));

try
{    
 
               Class.forName("com.mysql.jdbc.Driver");
               Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop", "root", "");
               Statement st=conn1.createStatement();
               int i=st.executeUpdate("insert into productsdetails(shopName,shopAddress,shopEmail,productName,productDescription,productPrice,productCategory,productImage,stock)values('"+shopName+"','"+shopAddress+"','"+shopEmail+"','"+pName+"','"+pDescription+"','"+pPrice+"','"+category+"','"+pImage+"','"+stock+"')");
               response.sendRedirect("adminProduct.jsp");
}
catch(Exception e)
{
  out.println("An exception occurred: " + e.getMessage());

}
%>
