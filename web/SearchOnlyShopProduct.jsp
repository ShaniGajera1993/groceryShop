<%-- 
    Document   : SearchOnlyShopProduct
    Created on : 5 Mar, 2021, 1:49:43 PM
    Author     : Parth savaliya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

String SproductName=request.getParameter("SSSearch");
String ShopName=(String)session.getValue("ShopName");
%>
<%=SproductName%><%=ShopName%>
<%-- 
    Document   : OnlyShopProduct
    Created on : 5 Mar, 2021, 1:08:54 PM
    Author     : Parth savaliya
--%>

<!DOCTYPE html>

<%-- 
    Document   : index
    Created on : 24 Feb, 2021, 8:47:17 AM
    Author     : dmala
--%>

<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>

 


<html lang="zxx">

<head>
    
    <style>

            #rcorners1 {

                border: 1px solid black;
                
                padding: 20px;
                margin:  20px;



            }


            #table-borders1
            {

            }
            #shopDetail{
                color: #000000;
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

            /* Simple CSS3 Fade-in Animation */
            @-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
            @-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
            @keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

            .fadeIn {
                opacity:0;
                -webkit-animation:fadeIn ease-in 1;
                -moz-animation:fadeIn ease-in 1;
                animation:fadeIn ease-in 1;

                -webkit-animation-fill-mode:forwards;
                -moz-animation-fill-mode:forwards;
                animation-fill-mode:forwards;

                -webkit-animation-duration:1s;
                -moz-animation-duration:1s;
                animation-duration:1s;
            }

            .fadeIn.first {
                -webkit-animation-delay: 0.4s;
                -moz-animation-delay: 0.4s;
                animation-delay: 0.4s;

                margin: 20px;
                font-size: 30px;
            }

            .fadeIn.second {
                -webkit-animation-delay: 0.6s;
                -moz-animation-delay: 0.6s;
                animation-delay: 0.6s;
            }

            .fadeIn.third {
                -webkit-animation-delay: 0.8s;
                -moz-animation-delay: 0.8s;
                animation-delay: 0.8s;
            }

            .fadeIn.fourth {
                -webkit-animation-delay: 1s;
                -moz-animation-delay: 1s;
                animation-delay: 1s;
            }

            th, td{
                text-align: center;
            }

            .col{
                color: red;
            }
        </style>
    
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
    
   
        <jsp:include page="ap-linkproductSearch.jsp"/>

    
    <!-- Page Preloder -->
    
    
   

    
    <!-- Latest Blog Section End -->


<section class="latest-blog spad">
            <div class="container fadeInDown">

                <br><h4><center> Product Category</center></h4>
                <center><table>
                        <tr>


                            <%

                                String filter = (String) session.getValue("filterForCategory");
                                String filterShop = (String) session.getValue("filterForShop");

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

                                try {

                                    int a = 1;
                                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                    statement = connection.createStatement();
                                    String sql = "select * from productsdetails ";
                                    resultSet = statement.executeQuery(sql);
                                    while (resultSet.next()) {
                                      if(resultSet.getString("shopName").equals(ShopName) && resultSet.getString("productName").equals(SproductName)){ 
                            %>

                            <td> 
                                <div id="rcorners1">
                                    <table> 
                                        <tr>
                                            <th>
                                                <image src="img/<%=resultSet.getString("productImage")%>" style="display:block;" width="200" height="200">

                                            </th> 
                                        </tr>
                                        <tr>
                                            <th>                                  
                                        <h7><%=resultSet.getString("productName")%> </h7>
                                        </th>
                                        </tr>
                                        <tr>
                                            <td><h7><%=resultSet.getString("productPrice")%>  ₹</h7></td>
                                        </tr>
                                        <tr>
                                            <td><h7><%=resultSet.getString("productDescription")%></h7></td>

                                        </tr>

                                        <tr>
                                            <td><h7><%=resultSet.getString("shopName")%></h7></td>

                                        </tr>

                                        <tr>
                                            <td><h7>Stock - <%=resultSet.getString("stock") %></h7></td>

                                        </tr>
                                        <tr>
                                            <td><h7>
                                                <%
                                                  String stock = resultSet.getString("stock");
                                              if(stock.equals("0"))
                                              {
                                                  %>
                                              
                                        
                                                 <span class='col'>Out Of Stock</span>
                                         <%
                                              }
                                              else
                                              {
                                                  %>
                                                <a href="
                                            <%
                                                out.println("addToCart.jsp?addProduct=");
                                                out.println(resultSet.getString("productID"));
                                            %>
                                                   ">

                                                    <i class="fa fa-shopping-cart fa-2x"></i>

                                            </a>
                                        <%
                                              }
                                              %> </h7></td>

                                        </tr>
                                    </table>  
                                </div>
                            </td>

                            <%
                                if (a == 3) {
                                    out.println("</tr>");
                                    a = 1;
                                } else if (a == 2) {
                                    a = 3;
                                } else {
                                    a = 2;
                                }
                            %>
                            <%
                                   } }
                                    connection.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
 </table>   
                </center>
                
            </div>



        </section>


    
     
    <!-- Footer Section End -->

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

