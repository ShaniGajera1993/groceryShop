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

#edit{
    color: blue;
}
#delete{
     color: red;
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
    <title>Shree Hari | Available Product</title>

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
    
    <jsp:include page="ap-link0.jsp"/>
</head>

<body>
    
    <%  
                                String checkUser=(String)session.getValue("shopEmail");
                                if(checkUser == "")
                                {
                                    
                                        response.sendRedirect("shoplogin.jsp");
                                    
                                       
                                }                          
  %> 
    
    <jsp:include page="ap-link.jsp"/>
    <!-- Page Preloder -->
   

    
    
  
    
    
      <div class="wrapper fadeInDown">
        <div id="formContent">
            <br>
        <center>
            <table style="margin:20px;
    padding: 20px;"> 
                            
                            <tr>
                                <td><center><b> Product ID</b></center></td>
                                <td><center><b>Category</b></center></td>
                                <td><center><b> Product Image</b></center></td>
                                <td><center><b>Product Name</b></center></td>
                                <td><center><b>Product Price</b></center></td>
                                <td><center><b>Product Description</b></center></td>
                                
                                <td><center><b>Edit</b></center></td>
                                <td><center><b>Delete</b></center></td>
                            </tr>
    <%

String username=(String)session.getValue("shopEmail");
    
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
String sql ="select * from productsdetails";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
    if(resultSet.getString("shopEmail").equals(username))
    {
       %>
       
      
                        <tr >
                            <td><center><%out.println(id);%></center></td>
                        
                            <td><center><%=resultSet.getString("productCategory") %> </center></td>
                        
                            <td>
                                    <center>
                                        <image  src="../img/<%=resultSet.getString("productImage")%>" weight="150px" height="150px">
                                    </center>
                            </td> 
                                
                            <td>
                                    <h7><center><%=resultSet.getString("productName") %> </center></h7>
                            </td>
                            
                             <td><h7><center><%=resultSet.getString("productPrice") %>  ₹</center></h7></td>
                                
                            <td><center><%=resultSet.getString("productDescription") %></center></td>
                                 
                        
                            <td><center><a id='edit' class="fa fa-edit" href="editProduct.jsp?id=<%=resultSet.getString("productID")%>" /></center></td>
                        
                            <td><center><a id='delete' class="fa fa-trash" href="deleteAdminProduct.jsp?id=<%=resultSet.getString("productID")%>" /></center></td>
                        
                        </tr>
                                
                     
                                     
       <%
           id = id +1;
    }
    
}
connection.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>
    
     </table>  
<br></center>
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
    <jsp:include page="ap-link2.jsp"/>
</body>

</html>


