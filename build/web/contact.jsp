    <%-- 
    Document   : index
    Created on : 24 Feb, 2021, 8:47:17 AM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>

 


<html lang="zxx">
    <style>
        #delete{
            color:#000000;
        }
        .sel{
            width:50px;
        }
        .cel{
            color:black;
            size: 20px;
        }
        td{
            font-weight:bold;
            color:#7A7E96;
        }
        .qty .count {
    color: #000;
    display: inline-block;
    vertical-align: top;
    font-size: 20px;
    font-weight: 700;
    line-height: 20px;
    padding: 0 2px
    ;min-width: 35px;
    text-align: center;
}
.qty .plus {
    cursor: pointer;
    display: inline-block;
    vertical-align: top;
    color: white;
    width: 20px;
    height: 20px;
    font: 20px/1 Arial,sans-serif;
    text-align: center;
    border-radius: 50%;
    background-color: #7A7E96;
    }
.qty .minus {
    cursor: pointer;
    display: inline-block;
    vertical-align: top;
    color: white;
    width: 20px;
    height: 20px;
    font: 20px/1 Arial,sans-serif;
    text-align: center;
    border-radius: 50%;
    background-clip: padding-box;
    background-color: #7A7E96;
}
.qty {
    text-align: center;
}
.minus:hover{
    background-color: #56baed !important;
}
.plus:hover{
    background-color: #56baed !important;
}
/*Prevent text selection*/
.bg-dark{
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
}
.count{  
    border: 0;
    width: 2%;
}
.count::-webkit-outer-spin-button,
.count::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
.count:disabled{
    background-color:white;
}

.p-price{
    color:#56baed;
}

        </style>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Varni Enterprise</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
        

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
    <jsp:include page="ap-link0.jsp"/>
</head>

<body>
    
   
            <jsp:include page="ap-link.jsp"/>

    
    
    <!-- Header End -->

    
    
    
    
    
    
    
    <section class="shopping-cart spad">
        <div class="container">
    
    
    <div class="cart-table">
        <table>
                            <thead>
                                <tr>
                                    <th>Image</th>
                                    <th class="p-name"> Name</th>
                                    <th class="p-name">Shop Name</th>
                                    <th class="p-name">Shop Address</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                               <%

String username=(String)session.getValue("username");
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
String sql ="select * from cartdetails";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
    if(resultSet.getString("userEmail").equals(username))
    {
        String img = resultSet.getString("productImage");
       %>
 
       <tr>
                                    <td class="cart-pic first-row"><img src="img/<%out.println(img);%>" alt=""></td>
                                    
                                     <td class="cart-title first-row">
                                        <h7><%=resultSet.getString("productName") %></h7>
                                    </td>
                                    
                                    <td class="cart-title first-row">
                                        <h7><%=resultSet.getString("shopName") %></h7>
                                    </td>
                                    
                                    <td class="cart-title first-row">
                                        <h7><%=resultSet.getString("shopAddress") %> </h7>
                                    </td>
                                    
                                    <td style="color:#7A7E96;" class="p-price first-row"><h7><%=resultSet.getString("productPrice")
                                    
                                        %> ₹</h7></td>
                                    
                                    <td class="qua-col first-row">
                                        <div class="quantity">
                                            
                                            <div class="qty">
                                                <a href="decCart.jsp?id=<%out.println(resultSet.getString("productID"));%>&quantity=<%out.println(resultSet.getString("quantity"));%>"><span class="minus bg-dark">-</span></a>
                                                <input type="text" class="count" value="<%=resultSet.getString("quantity")%>">
                                                <a href="incCart.jsp?id=<%out.println(resultSet.getString("productID"));%>&quantity=<%out.println(resultSet.getString("quantity"));%>"><span class="plus bg-dark">+</span></a>
                                                
                                            </div>
                                        </div>
                                    </td>
                                    
                                    <td class="close-td first-row"><a id="delete" href="deleteCartItem.jsp?id=<%
                                                         out.println(resultSet.getString("productID"));             %>"><i class="ti-close"></i></a></td>
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
    </div>

<%


     int available = 0;

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection1 = null;
Statement statement1 = null;
ResultSet resultSet1 = null;

try{
    
    

connection1 = DriverManager.getConnection(connectionUrl+database, userid, password);
statement1=connection1.createStatement();
String sql1 ="select * from ordersdetails";
resultSet1 = statement1.executeQuery(sql1);
while(resultSet1.next())
{
      if(resultSet1.getString("userEmail").equals(username))
      {
          available = 1;
      }
}
connection1.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>


            <div class="col-lg-4 offset-lg-4" >
                            <div class="proceed-checkout">
                                <ul>
                                    <li class="subtotal">Subtotal <span><%
                                        out.println(total);
                                            %>₹</span></li>
                                    <li class="cart-total">Total <span style="color:black;"><%
                                        out.println(total);
                                            %>₹</span></li>
                                </ul>
                                
                                <%
                                if(total != 0)
                                {
                                   if(available == 1)
                                   {
                                       %>
                                        <a href=""class="proceed-btn" style="background-color:#56baed;border: 1px solid #black;border-color: black;">Your Previous Order Complate then give next order</a>
                                         <%
                                   }
                                   else
                                   {
                                        %>
                                        <a href="confirmOrderTocustomer.jsp?total=<%
                                        out.println(total);
                                            %>"class="proceed-btn" style="background-color:#56baed;">PROCEED TO CHECK OUT</a>
                                         <%
                                   }
                                }
                                %>
                                
                                
                               
                            </div>
                        </div>
        </div>
    </section>
    
    
    
    
    
    
    
    
    
    
    
  
    <!-- Latest Blog Section Begin -->
    

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