<%-- 
    Document   : deliveryPage
    Created on : 1 Mar, 2021, 12:46:47 PM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
    <head>
        <script>  
function validateform(){  
var oID=document.myForm.orderNumber.value;  

if (oID==null || oID==""){  
  alert("Enter Order number take to customer");  
  return false;  
}


}  


</script>  
        
        
        
         <style>
        
        .wrapper {
    display: flex;
    align-items: center;
    flex-direction: column; 
    justify-content: center;
    margin:20px;
    padding: 20px;
}

#formContent {
    -webkit-border-radius: 10px 10px 10px 10px;
    border-radius: 10px 10px 10px 10px;
    background: #fff;
    padding: 30px;
   margin:20px;
    position: relative;
    padding: 0px;
    -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    text-align: center;
}

.fadeInDown {
                -webkit-animation-name: fadeInDown;
                animation-name: fadeInDown;
                -webkit-animation-duration: 1s;
                animation-duration: 1s;
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
            }

            @-webkit-keyframes fadeInDown {
                0% {
                    opacity: 0;
                    -webkit-transform: translate3d(0, -100%, 0);
                    transform: translate3d(0, -100%, 0);
                }
                100% {
                    opacity: 1;
                    -webkit-transform: none;
                    transform: none;
                }
            }

            @keyframes fadeInDown {
                0% {
                    opacity: 0;
                    -webkit-transform: translate3d(0, -100%, 0);
                    transform: translate3d(0, -100%, 0);
                }
                100% {
                    opacity: 1;
                    -webkit-transform: none;
                    transform: none;
                }
            }
            td{
                padding: 10px;
            }
    </style>
        
        <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shree Hari | Delivery boy</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../css/style.css" type="text/css">
    <jsp:include page="ap-link0.jsp" /> 
    </head>
    <body>
      <jsp:include page="ap-link.jsp" /> 
        
          <header class="header-section">
        <div class="header-top">
            
            <div class="container">
                           
                            <div class="ht-right">
                                    <%  
                                        try
                                        {
                                             String username=(String)session.getValue("deliveryBoyEmail");
                                             
                                           
                                          if(username == "" || username == null )
                                          {
                                              
                                              response.sendRedirect("deliveryBoyLogin.jsp");
                                              
                                          }
                                          else
                                          {
                                             %>
                                               

                                                         

                                                             
                                                             <%


    String deliveryBoyEmail=(String)session.getValue("deliveryBoyEmail");
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
String sql ="select * from deliveryboydetails";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
    if(resultSet.getString("dBoyEmail").equals(deliveryBoyEmail))
    {
        
    
       %>
       
      
                          <%
                               session.putValue("dID",resultSet.getString("dBoyID"));
                              
                              session.putValue("work1",resultSet.getString("task1"));
                              session.putValue("work2",resultSet.getString("task2"));
                              
                          %>
                         
                             
       <%
    }       
}
connection.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>
                                                             
                                                             
                                                             
                                                        
                                    <%
                                          }
                                        }
                                        catch(Exception e)
                                        {
                                           out.println(e.getMessage()); 
                                        }
                                       
                                    %> 
                            </div>          
            </div>
        </div>
    
        
    </header>
        
                            <br>
                            <br>
                            
                            <h3><center>Order Details</center></h3><br>
                            
                            
     
<%
    String work11 = (String)session.getValue("work1");
    if(!(work11.equals("no")))
    {
        %>

                            
                            
  <div class="wrapper fadeInDown">
        <div id="formContent">
            <br>
        <center>
            <table style="margin:20px;
    padding: 20px;"> 
                     <tr>
                                    <td><h5>Delivery :</h5></td>
                                </tr>         
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
    
    
 int id=1;
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from deliveryadd";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
    String userDelivery = (String)session.getValue("work1");
    
    if(resultSet.getString("userEmail").equals(userDelivery))
    {
        
       %>
       
       
           
       <tr><td align="right">Name : </td> <td><center><%=resultSet.getString("fname") %><%=resultSet.getString("lname") %></center></td></tr>
         <tr>  <td align="right">Phone Number : </td> <td><center><%=resultSet.getString("phone") %></center></td></tr>
         <tr>  <td align="right">Email : </td> <td><center><%=resultSet.getString("addressEmail") %></center></td></tr>
          <tr> <td align="right">Street : </td> <td><center><%=resultSet.getString("street") %></center></td></tr>
           <tr><td align="right">City : </td> <td><center><%=resultSet.getString("city") %></center></td></tr>
        <tr><td align="right">Pincode : </td> <td><center><%=resultSet.getString("pincode") %></center></td></tr>
            
    <tr><td align="right">Order Confirm  : </td>  <td><center>
        <form action="orderDone.jsp?work=1" method="post" name="myForm" onsubmit="return validateform()">
            <input style="padding: 5px;" type="text" placeholder="Enter Order Number" name="orderNumber"><br><br>
                <button type="submit" class='site-btn login-btn' style="background-color: #56baed;padding: 5px;">Confirm Order</button> 
            </form>
    </center></td></tr>

       <%
         
    }
    
}
connection.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>
                              
</table>
        
<h5><center>Total Products</center></h5>    

<section class="shopping-cart spad">
        
    
    
   
            <table style="margin:20px;
    padding: 20px;">
                            <thead>
                                <tr>
                                    
                                    <th class="p-name"><center>Product Name</center></th>
                                    <th class="p-name"><center>Product Price</center></th>
                                    <th class="p-name"><center>Product Quantity</center></th>
                                    <center><th class="p-name"><center>Shop Name</center></th>
                                    <center><th class="p-name"><center>Shop Address</center></th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                
                               <%

String work1 = (String)session.getValue("work1");
int total=0;
    

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
    
    
 int id=1;
connection1 = DriverManager.getConnection(connectionUrl1+database1, userid1, password1);
statement1=connection1.createStatement();
String sql1 ="select * from ordersdetails";
resultSet1 = statement1.executeQuery(sql1);
while(resultSet1.next())
{
    if(resultSet1.getString("userEmail").equals(work1))
    {
       %>
     
       <tr>
                                          
                                    
                                     <td class="cart-title first-row">
                                      <center>  <h7><%=resultSet1.getString("productName") %></h7></center>
                                    </td>
                                    
                                    <td class="p-price first-row"><center><%=resultSet1.getString("productPrice")
                                    
                                     %> ₹</center></td>
                                    
                                    <td class="cart-title first-row">
                                       <center> <h7><%=resultSet1.getString("quantity") %></h7></center>
                                    </td>
                                    
                                    <td class="cart-title first-row">
                                       <center> <h7><%=resultSet1.getString("shopName") %></h7></center>
                                    </td>
                                    
                                    <td class="cart-title first-row">
                                      <center>  <h7><%=resultSet1.getString("shopAddress") %> </h7></center>
                                    </td>   
                            
   </tr>
   
       <%
          total =total + Integer.parseInt(resultSet1.getString("productPrice")) * Integer.parseInt(resultSet1.getString("quantity"));
          
    }
    
}
connection.close();
} catch (Exception e)
{

}

%>
                               
<tr>
    <td><h7><center>Total :</center></h7></td>
    <td style="color: #56baed">
        <%out.println(total);%>₹<br>
        --------
        
    </td>
      <td></td> 
      <td></td>
</tr>

                            </tbody>
                        </table>
       </center>
        <br>
        </div>
        </div>
    </section>
    	
        <%
    }
%>
        
             
      




<%
    String work12 = (String)session.getValue("work2");
    if(!(work12.equals("no")))
    {
        %>
<div id="corner">               
        
<table>
                                <tr>
                                    <td><h3>Delivery 2:</h3></td>
                                </tr>
 </table>
                            
                            
 <div class="cart-table">
    <table >
                             
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
    
    
 int id=1;
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from deliveryadd";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
    String userDelivery = (String)session.getValue("work2");
    
    if(resultSet.getString("userEmail").equals(userDelivery))
    {
        
       %>
       
       
           
       <tr><td align="right">Name : </td> <td><center><%=resultSet.getString("fname") %><%=resultSet.getString("lname") %></center></td></tr>
         <tr>  <td align="right">Phone Number : </td> <td><center><%=resultSet.getString("phone") %></center></td></tr>
         <tr>  <td align="right">Email : </td> <td><center><%=resultSet.getString("addressEmail") %></center></td></tr>
          <tr> <td align="right">Street : </td> <td><center><%=resultSet.getString("street") %></center></td></tr>
           <tr><td align="right">City : </td> <td><center><%=resultSet.getString("city") %></center></td></tr>
        <tr><td align="right">Pincode : </td> <td><center><%=resultSet.getString("pincode") %></center></td></tr>
   <tr><td align="right">Order Confirm  : </td> <td><center>
        <form action="orderDone.jsp?work=2" method="post" name="myForm" onsubmit="return validateform()">
                <input type="text" placeholder="Enter Order Number" name="orderNumber">
                <button type="submit" class='site-btn login-btn' >Confirm Order</button> 
            </form>
    </center></td></tr>

       <%
         
    }
    
}
connection.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>
                              
</table>
</div>
<h5><center>Total Products</center></h5>    

<section class="shopping-cart spad">
        
    
    
    <div class="cart-table">
        
    <table>
                            <thead>
                                <tr>
                                    
                                    <th class="p-name"><center>Product Name</center></th>
                            <th class="p-name"><center>Product Price</center></th>
<th class="p-name"><center>Product Quantity</center></th>
                                    <center><th class="p-name"><center>Shop Name</center></th>
                                    <center><th class="p-name"><center>Shop Address</center></th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                
                               <%

String work2 = (String)session.getValue("work2");
int total=0;
    

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
    
    
 int id=1;
connection1 = DriverManager.getConnection(connectionUrl1+database1, userid1, password1);
statement1=connection1.createStatement();
String sql1 ="select * from ordersdetails";
resultSet1 = statement1.executeQuery(sql1);
while(resultSet1.next())
{
    if(resultSet1.getString("userEmail").equals(work2))
    {
       %>
     
       <tr>
                                          
                                    
                                     <td class="cart-title first-row">
                                      <center>  <h5><%=resultSet1.getString("productName") %></h5></center>
                                    </td>
                                    
                                    <td class="p-price first-row"><center><%=resultSet1.getString("productPrice")
                                    
                                     %> ₹</center></td>
                                    
                                     <td class="cart-title first-row">
                                       <center> <h7><%=resultSet1.getString("quantity") %></h7></center>
                                    </td>
                                    
                                    <td class="cart-title first-row">
                                       <center> <h7><%=resultSet1.getString("shopName") %></h7></center>
                                    </td>
                                    
                                    <td class="cart-title first-row">
                                      <center>  <h7><%=resultSet1.getString("shopAddress") %> </h7></center>
                                    </td>   
                            
   </tr>
   
       <%
                   total =total + Integer.parseInt(resultSet1.getString("productPrice")) * Integer.parseInt(resultSet1.getString("quantity"));

          
    }
    
}
connection.close();
} catch (Exception e)
{

}

%>
                               
<tr>
    <td><h4><center>Total :</center></h4></td>
    <td>
        <b> <%out.println(total);%>₹<br></b>
        --------
        
    </td>
      <td></td> 
      <td></td>
</tr>

                            </tbody>
                        </table>

    
           
        </div>
    </section>
    </div>1
        <%
    }
%>


<jsp:include page="ap-link2.jsp" /> 
    </body>
</html>

                                                