<%-- 
    Document   : addToCart
    Created on : 26 Feb, 2021, 9:52:13 AM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    try
    {
        String  productId = request.getParameter("addProduct");
String usernaem = (String)session.getValue("username");

if(usernaem.equals("") || usernaem.equals(null))
{
    response.sendRedirect("login.jsp");
}
else
{
    
 String pName,pPrice,pDescription,shopName,shopEmail,shopAddress,pCategory,userEmail,pImage;
        
  
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "groceryshop";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

try{
    
 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from productsdetails";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
    if(resultSet.getString("productID").equals(productId))
    {
        pName = resultSet.getString("productName");
        pPrice = resultSet.getString("productPrice");
        pDescription = resultSet.getString("productDescription");
        shopName = resultSet.getString("shopName");
        shopAddress = resultSet.getString("shopAddress");
        pImage = resultSet.getString("productImage");
        shopEmail = resultSet.getString("shopEmail");
        pCategory = resultSet.getString("productCategory");
        userEmail = (String)session.getValue("username");
        
                try
                {    

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop", "root", "");
                Statement st=conn1.createStatement();
                int i=st.executeUpdate("insert into cartdetails(productName,productPrice,productDescription,shopName,shopAddress,shopEmail,productCategory,userEmail,quantity,productImage)values('"+pName+"','"+pPrice+"','"+pDescription+"','"+shopName+"','"+shopAddress+"','"+shopEmail+"','"+pCategory+"','"+userEmail+"','1','"+pImage+"')");
                response.sendRedirect("contact.jsp");
                }
                catch(Exception e)
                {

                out.println("An exception occurred: " + e.getMessage());
                }
        
        
         
    }
    
}
connection.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

}


    }
    catch(Exception e)
    {
          out.println("An exception occurred: " + e.getMessage());
          response.sendRedirect("login.jsp");
    }
    



%>