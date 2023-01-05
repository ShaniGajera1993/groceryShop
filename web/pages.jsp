<%-- 
    Document   : index
    Created on : 24 Feb, 2021, 8:47:17 AM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>

 


<html lang="zxx">

<head>
    <style>
        
        #rcorners1 {
  border-radius: 25px;
   border: 2px solid #ADACA5;
  background: #FFFFFF;
  padding: 20px;
  margin:  20px;
  
  
}
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

</style>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shree Hari | Place Order</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
            <jsp:include page="ap-link0.jsp"/>

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    
   
                <jsp:include page="ap-link.jsp"/>

    
  <div class="wrapper fadeInDown">
        <div id="formContent">
    <br>
    <h3><center>Your Orders</center>
    </h3>
    <!-- Latest Blog Section Begin -->
    <section class="latest-blog spad">
        <div class="container">
            <div class="cart-table">
           <table>
                            <thead>
                                <tr>
                                    <th>Product Image</th>
                                    <th class="p-name">Product Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Shop Name</th>
                                    <th>Shop Email</th>
                                    <th>Shop Address</th>
                                    
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                                    
                                    <%

String userEmail=(String)session.getValue("username");
int total=0;
    

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
 int id=1;
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from ordersdetails";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
    if(resultSet.getString("userEmail").equals(userEmail))
    {
         String img = resultSet.getString("productImage");
       %>
 
       <tr>
                            <td  class="cart-title first-row">
                                    <image src="img/<%out.println(img);%>" weight="150px" height="150px">

                                </td> 
           
           <td >
                            <center>    <h7><%=resultSet.getString("productName") %></h7></center> 
                                    </td>
           
                                    
                                    
                                    
                                    
                                    <td class="cart-title first-row">
                                      <center>   <h7><%=resultSet.getString("shopName") %> </h7></center> 
                                    </td>
                                    
                                    <td class="cart-title first-row">
                                      <center>   <h7><%=resultSet.getString("shopEmail") %> </h7></center> 
                                    </td>
                                    
                                    <td class="cart-title first-row">
                                      <center>   <h7><%=resultSet.getString("shopAddress") %> </h7></center> 
                                    </td>
                                    
                                    <td class="cart-title first-row">
                                       <center>  <h5><%=resultSet.getString("quantity") %></h5></center> 
                                    </td>
                                    
                                    <td class="p-price first-row"><center> <%=resultSet.getString("productPrice")
                                    
                                        %> ₹</center> </td>

           
                                    <td class="cart-title first-row">
                                       <center>  <h7><%=resultSet.getString("status") %></h7></center> 
                                    </td>
                                                                        
                                    
                                    
                                      </tr>
       
       <%
          total =total + Integer.parseInt(resultSet.getString("productPrice")) * Integer.parseInt(resultSet.getString("quantity"));
          
    }
    
}
connection.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>

                                
                            </tbody>
                            
                        </table> 
<table>
    
    <tr>
    <td> </td>
    <td> </td>
    <td>
       
       
        
    </td>
    <td> </td>
    <td> </td>
    <td>Total</td>
    <td> <b> <%out.println(total);%><br></b></td>
    <td> </td>
    
</tr>   

</table>
    
    
            </div>
    <div class="col-lg-4 offset-lg-4" >
                            <div class="proceed-checkout">
                                <ul>
                                    
                                    <li class="cart-total">Total <span style="color:black;"><%
                                        out.println(total);
                                            %>₹</span></li>
                                </ul>
                                
                                
                               
                            </div>
                        </div>
        </div>
    </section>
    <!-- Latest Blog Section End -->

    <%
    if(total != 0)
    {
        %>
        <h3><center>Delivery Boy Details</center></h3><br>
     <div class="container">
         <div class="cart-table">
             
             <table>
               
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
String sql1 ="select * from deliveryadd";
resultSet1 = statement1.executeQuery(sql1);
while(resultSet1.next())
{
   if(resultSet1.getString("userEmail").equals(userEmail))
   {
       
   String deliveryBoy = resultSet1.getString("deliveryBoy");
    
       %>
       
      
                        <tr>
                            <td><center>Order number:-</center></td> <td><center><%=resultSet1.getString("oID") %> </center></td>
                        </tr>
                        
                         <%
                                               String driver3 = "com.mysql.jdbc.Driver";
                                               String connectionUrl3 = "jdbc:mysql://localhost:3306/";
                                               String database3 = "groceryshop";
                                               String userid3 = "root";
                                               String password3 = "";
                                               try {
                                               Class.forName(driver);
                                               } catch (ClassNotFoundException e) {
                                               e.printStackTrace();
                                               }
                                               Connection connection3 = null;
                                               Statement statement3 = null;
                                               ResultSet resultSet3 = null;

                                                try{



                                                connection3 = DriverManager.getConnection(connectionUrl3+database3, userid3, password3);
                                                statement3=connection3.createStatement();
                                                String sql3 ="select * from deliveryboydetails";
                                                resultSet3 = statement3.executeQuery(sql3);
                                                while(resultSet3.next())
                                                {
                                                  if(resultSet3.getString("dBoyID").equals(deliveryBoy))  
                                                  {
                                                      %>
                                                      <tr>
                                                            <td><center>Delivery Boy Name-</center></td> <td><center><%=resultSet3.getString("dBoyFName") %>   <%=resultSet3.getString("dBoyLName") %></center></td>

                                                        </tr>
                                                        <tr>
                                                            <td><center>Mobile number:-</center></td> <td><center><%=resultSet3.getString("dBoyPhone")%> </center></td>
                                                        </tr>
                                                        <tr>
                                                            <td><center>Email:-</center></td> <td><center><%=resultSet3.getString("dBoyEmail") %> </center></td>
                                                        </tr>
                                                      <%
                                                  }
                                                }
                                                connection3.close();
                                                } catch (Exception e)
                                                {
                                                out.println("An exception occurred: " + e.getMessage());
                                                }
                         %>       
                     
                                     
       <%
        }  
      
}
connection1.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>
                 
             </table>
              </div>
         </div>
     </div>   
    <%
    }
    
    %>
        </div>
  </div>
    

    

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/jquery.dd.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    
                <jsp:include page="ap-link2.jsp"/>

</body>

</html>
