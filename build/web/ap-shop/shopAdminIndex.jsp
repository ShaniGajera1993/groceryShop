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

h3{
    padding: 15px;
   margin:10px; 
}
td{
    padding: 15px;
   margin:10px;
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
        <title>Shree Hari | Shop Home</title>

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



        <!-- Header End -->



        <%
            String shopEmail = (String) session.getValue("shopEmail");
            String shopName = (String) session.getValue("shopName");
            String shopAddress = (String) session.getValue("shopAddress");

        %>

        <br>
       


       

                    <div class="wrapper fadeInDown">
        <div id="formContent">
            <br>
        <center>
            <table style="margin:20px;
    padding: 20px;"> 
                 <h3><center><b><i>Welcome  to  <%out.println(shopName);%></i></b></center></h3>
                <tr>
                    <td id="th1"><h6>Shop Name :-</h6></td>
                    <td id="th1"><h6><%out.println(shopName);%></h6></td>   
                </tr>
                
                <tr>
                    <td id="th1"><h6>Shop Email:-</h6></td>
                    <td id="th1"><h6><%out.println(shopEmail);%></h6></td>  
                </tr>

           
                <tr>
                    <td id="th1"><h6>Shop Address :-</h6></td>
                    <td id="th1"><h6><%out.println(shopAddress);%></h6></td> 
                </tr>
                

           

                
                <tr>
                    <td><h6>Total Product</h6></td>
                    <td><div id="totalProduct"><h6>

                                                <%

                                                    String username = (String) session.getValue("shopEmail");

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

                                                        int totalProducts = 0;
                                                        connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                                        statement = connection.createStatement();
                                                        String sql = "select * from productsdetails";
                                                        resultSet = statement.executeQuery(sql);
                                                        while (resultSet.next()) {
                                                            if (resultSet.getString("shopEmail").equals(username)) {

                                                                totalProducts = totalProducts + 1;

                                                            }

                                                        }
                                                        out.println(totalProducts);
                                                        connection.close();
                                                    } catch (Exception e) {

                                                    }

                                                %>

                        </h6></div></td>
                                    </tr>

                                    <tr>
                                        <td><h6>Total  Orders</h6></td>
                                        <td><div id="totalProduct2"><h6>0</h6></div></td>  
                                    </tr>
                                   
                                
                            </table>
            <br>
                        </center>
        </div>
                    </div>
                







        <!-- Footer Section End -->

        <!-- Js Plugins -->
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/jquery-ui.min.js"></script>
        <script src="../js/jquery.countdown.min.js"></script>
        <script src="../js/jquery.nice-select.min.js"></script>
        <script src="../js/jquery.zoom.min.js"></script>
        <script src="../js/jquery.dd.min.js"></script>
        <script src="../js/jquery.slicknav.js"></script>
        <script src="../js/owl.carousel.min.js"></script>
        <script src="../js/main.js"></script>
        <jsp:include page="ap-link2.jsp" />  


    </body>

</html>