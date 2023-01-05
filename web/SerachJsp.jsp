<%-- 
    Document   : SerachJsp
    Created on : 3 Mar, 2021, 3:14:18 PM
    Author     : Parth savaliya
--%>
<%@page import="java.sql.*,java.util.*"%>
<html>
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

            th,td{
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
         <jsp:include page="ap-linkproduct.jsp"/>

         
<%

    String ProductName=request.getParameter("Search");

%>
<section class="latest-blog spad">
            <div class="container fadeInDown">

                <br><h4><center> Product Category</center></h4>
                <center><table>
                        <tr>
<%

    try{
        int a = 1;
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
Statement st= con.createStatement();
ResultSet resultSet=st.executeQuery("select * from productsdetails where productName='"+ProductName+"'");

while(resultSet.next())
{
            if(resultSet.getString("productName").equals(ProductName))
            { 
            
             %>


<td> 
                                <div id="rcorners1">
                                    <table> 
                                        <tr>
                                        <td>
                                                <image src="img/<%=resultSet.getString("productImage")%>" style="display:block;" width="200" height="200">

                                        </td>
                                        </tr>
                                        <tr>
                                            <td><b><h5><%=resultSet.getString("productName")%></h5></b></td>
                                        </tr>
                                        <tr>
                                            <td><h7><%=resultSet.getString("productPrice")%> <i class="fa fa-rupee fa-xs"></i></h7></td>
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
            
            }
           
}
}
catch (Exception e) {
 session.putValue("errorshoplogin","1");
response.sendRedirect("index.jsp");  


e.printStackTrace();
}
%>
</table>   
                </center>
                
            </div>



        </section>
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