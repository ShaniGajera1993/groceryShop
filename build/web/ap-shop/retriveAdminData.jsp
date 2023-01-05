<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>


<%

    String username=(String)session.getValue("shopEmail");
    
String id = request.getParameter("userid");
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
    
 int a=0 ;   
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from shopowners";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
    if(resultSet.getString("email").equals(username))
    {
       
        session.putValue("shopName",resultSet.getString("shopName"));
        session.putValue("shopAddress",resultSet.getString("address"));
        
       
        response.sendRedirect("shopAdminIndex.jsp");
    }
    
}
connection.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>
