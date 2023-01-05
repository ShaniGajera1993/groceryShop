<%-- 
    Document   : orderDone
    Created on : 2 Mar, 2021, 11:29:11 AM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String work="work"+request.getParameter("work");
String orderNumber=request.getParameter("orderNumber");
String dID = (String)session.getValue("dID");
String userEmail = "";




        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
        Statement st= con.createStatement();
        String update = "UPDATE deliveryboydetails SET  task1 = 'no' WHERE dBoyID = "+dID;
        st.executeUpdate(update);    
        }
        catch(Exception e)
        {
         out.println(e.getMessage());
        }
        
            

%>


 <%   
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
String sql ="select * from deliveryadd";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
    
  if(resultSet.getString("oID").equals(orderNumber))  
  {
      userEmail = resultSet.getString("userEmail");
  }
}
connection.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>


<%   
String driver1 = "com.mysql.jdbc.Driver";
String connectionUrl1 = "jdbc:mysql://localhost:3306/";
String database1 = "groceryshop";
String userid1 = "root";
String password1 = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection1 = null;
Statement statement1 = null;
ResultSet resultSet1 = null;

try{
    
    

connection1 = DriverManager.getConnection(connectionUrl1+database1, userid1, password1);
statement1=connection1.createStatement();
String sql1 ="select * from ordersdetails";
resultSet1 = statement1.executeQuery(sql1);
while(resultSet1.next())
{
    
  if(resultSet1.getString("userEmail").equals(userEmail))  
  {
     String pID = resultSet1.getString("productID");
               try
               {
                

                       Class.forName("com.mysql.jdbc.Driver");
                       java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
                       Statement st= con.createStatement();
                       String sqlDelete = "DELETE FROM ordersdetails WHERE productID = "+pID;
                       st.executeUpdate(sqlDelete);    
                       
               }
               catch (Exception e)
               {
                 out.println(e.getMessage());

               }
     
  }
}

connection.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>

<html>
    <head>
         <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../css/style.css" type="text/css">
                            <jsp:include page="ap-link0.jsp"/>

    </head>
    <body>
                                <jsp:include page="ap-link.jsp"/>

        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <h3><center>Delivery Complate</center></h3>
                            <center>   <a href="deliveryPage.jsp" class="login-panel">
                                    
                                                 <button class='site-btn login-btn' style="background-color: #56baed">Back</button> 
                                              
                                </a> </center>
    </body>
                            <jsp:include page="ap-link2.jsp"/>

</html>