

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    
    <style>
            .one{
                text-align: center;
                font-size: 20px; 
                margin:50px;
                padding:20px;
            }

            body {
                font-family: "Poppins", sans-serif;
                height: 100vh;
            }

            a {
                color: #92badd;
                display:inline-block;
                text-decoration: none;
                font-weight: 400;
            }

            h2 {
                text-align: center;
                font-size: 16px;
                font-weight: 600;
                text-transform: uppercase;
                display:inline-block;
                margin: 40px 8px 10px 8px; 
                color: #cccccc;
            }



            /* STRUCTURE */

            .wrapper {
                display: flex;
                align-items: center;
                flex-direction: column; 
                justify-content: center;
                width: 100%;
                min-height: 100%;
                padding: 20px;
            }

            #formContent {
                -webkit-border-radius: 10px 10px 10px 10px;
                border-radius: 10px 10px 10px 10px;
                background: #fff;
                padding: 30px;
                width: 90%;
                max-width: 450px;
                position: relative;
                padding: 0px;
                -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
                box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
                text-align: center;
            }

            #formFooter {
                background-color: #f6f6f6;
                border-top: 1px solid #dce8f1;
                padding: 25px;
                text-align: center;
                -webkit-border-radius: 0 0 10px 10px;
                border-radius: 0 0 10px 10px;
            }



            /* TABS */

            h2.inactive {
                color: #cccccc;
            }

            h2.active {
                color: #0d0d0d;
                border-bottom: 2px solid #5fbae9;
            }



            /* FORM TYPOGRAPHY*/

            input[type=button], input[type=submit], input[type=reset]  {
                background-color: #56baed;
                border: none;
                color: white;
                padding: 15px 80px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                text-transform: uppercase;
                font-size: 13px;
                -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
                box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
                -webkit-border-radius: 5px 5px 5px 5px;
                border-radius: 5px 5px 5px 5px;
                margin: 5px 20px 40px 20px;
                -webkit-transition: all 0.3s ease-in-out;
                -moz-transition: all 0.3s ease-in-out;
                -ms-transition: all 0.3s ease-in-out;
                -o-transition: all 0.3s ease-in-out;
                transition: all 0.3s ease-in-out;
            }

            input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
                background-color: #39ace7;
            }

            input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
                -moz-transform: scale(0.95);
                -webkit-transform: scale(0.95);
                -o-transform: scale(0.95);
                -ms-transform: scale(0.95);
                transform: scale(0.95);
            }

            input[type=text],input[type=password] {
                background-color: #f6f6f6;
                border: none;
                color: #0d0d0d;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 5px;
                width: 85%;
                border: 2px solid #f6f6f6;
                -webkit-transition: all 0.5s ease-in-out;
                -moz-transition: all 0.5s ease-in-out;
                -ms-transition: all 0.5s ease-in-out;
                -o-transition: all 0.5s ease-in-out;
                transition: all 0.5s ease-in-out;
                -webkit-border-radius: 5px 5px 5px 5px;
                border-radius: 5px 5px 5px 5px;
            }

            input[type=text]:focus,input[type=password]:focus {
                background-color: #fff;
                border-bottom: 2px solid #5fbae9;
            }

            input[type=text]:placeholder,input[type=password]:placeholder {
                color: #cccccc;
            }



            /* ANIMATIONS */

            /* Simple CSS3 Fade-in-down Animation */
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

                -webkit-animation-duration:1.6s;
                -moz-animation-duration:1.6s;
                animation-duration:1.6s;
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

            .fadeIn.fifth {
                -webkit-animation-delay: 1.2s;
                -moz-animation-delay: 1.2s;
                animation-delay: 1.2s;
            }

            .fadeIn.six {
                -webkit-animation-delay: 1.4s;
                -moz-animation-delay: 1.4s;
                animation-delay: 1.0s;
            }

            .fadeIn.seven {
                -webkit-animation-delay: 1.6s;
                -moz-animation-delay: 1.6s;
                animation-delay: 1.6s;
            }


            /* Simple CSS3 Fade-in Animation */
            .underlineHover:after {
                display: block;
                left: 0;
                bottom: -10px;
                width: 0;
                height: 2px;
                background-color: #56baed;
                content: "";
                transition: width 0.2s;
            }

            .underlineHover:hover {
                color: #0d0d0d;
            }

            .underlineHover:hover:after{
                width: 100%;
            }



            /* OTHERS */

            *:focus {
                outline: none;
            } 

            #icon {
                width:60%;
            }

        </style>  
     <script>  
function validateform(){
    
var pName=document.myform.pName.value;  
var pPrice=document.myform.pPrice.value;
var pStock=document.myform.pStock.value;
var pDescription=document.myform.pDescription.value;



 
if (pName==null || pName==""){  
  alert("Enter product name...");  
  return false;  
} 
else if (pPrice==null || pPrice==""){  
  alert("Enter product price...");  
  return false;  
}
else if (pStock==null || pStock==""){  
  alert("Enter product Stock...");  
  return false;  
}
else if (pDescription==null || pDescription==""){  
  alert("Enter product description...");  
  return false;  
} 

}


</script> 
    
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shree Hari | Update Product</title>

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

    <jsp:include page="ap-link.jsp"/>
   <!-- Register Form Section Start -->
   <br><br><div class="wrapper fadeInDown">
            <div id="formContent">
                <!-- Tabs Titles -->

                <!-- Icon -->
                <div class="fadeIn first">
                    <span class="one">Update Product Page</span>
                </div>
                <%String id= request.getParameter("id");%>
                <!-- Login Form -->
                <form method="post" action="editProductToDb.jsp?id=<%out.println(id);%>" onsubmit="return validateform()" name="myform">
                    
                    <%
                        String pName = "";
                        int pPrice = 0;
                        int stock = 0;
                        String pDescription = "";
                       


                                                            

                                                            String driver1 = "com.mysql.jdbc.Driver";
                                                            String connectionUrl1 = "jdbc:mysql://localhost:3306/";
                                                            String database1 = "groceryshop";
                                                            String userid1 = "root";
                                                            String password1 = "";
                                                            try {
                                                            Class.forName(driver1);
                                                            } catch (ClassNotFoundException e) {
                                                            e.printStackTrace();
                                                            }
                                                            Connection connection1 = null;
                                                            Statement statement1 = null;
                                                            ResultSet resultSet1 = null;

                                                            try{


                                                            connection1 = DriverManager.getConnection(connectionUrl1+database1, userid1, password1);
                                                            statement1=connection1.createStatement();
                                                            String sql ="select * from productsdetails";
                                                            resultSet1 = statement1.executeQuery(sql);
                                                            while(resultSet1.next())
                                                            {
                                                                if(resultSet1.getString("productID").equals(id))
                                                                {

                                                                    pName = resultSet1.getString("productName");
                                                                    pDescription = resultSet1.getString("productDescription");
                                                                    pPrice = Integer.parseInt(resultSet1.getString("productPrice"));
                                                                    stock = Integer.parseInt(resultSet1.getString("stock"));                                                                  pDescription = resultSet1.getString("pDescription");
                                                                   
                                                                }

                                                            }
                                                            connection1.close();
                                                            } catch (Exception e)
                                                            {
                                                            }

                        %>
                    <input type="text" id="login" name="pName" class="fadeIn second" value="<%out.println(pName);%>" >
                    <input type="text" id="login" name="pPrice" class="fadeIn third" value="<%out.println(pPrice);%>">
                    <input type="text" id="login" name="pStock" class="fadeIn fourth" value="<%out.println(stock);%>">
                    <input type="text" id="password" class="fadeIn fifth" name="pDescription" value="<%out.println(pDescription);%>">
                    
              
                    <input type="submit" class="fadeIn seven" value="Update Product">
                </form>

            </div>
        </div><br><br>
        <!-- Register Form Section End --> 
    
    

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


