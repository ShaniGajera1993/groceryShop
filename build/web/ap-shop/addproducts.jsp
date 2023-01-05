S<%-- 
    Document   : register
    Created on : 24 Feb, 2021, 8:08:37 AM
    Author     : dmala
--%>

<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

            input[type=text],input[type=password],input[type=file],#category,input[type=number] {
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

            input[type=text]:focus,input[type=password]:focus,input[type=file]:focus,#category:focus,input[type=number]:focus {
                background-color: #fff;
                border-bottom: 2px solid #5fbae9;
            }

            input[type=text]:placeholder,input[type=password]:placeholder,input[type=file]:placeholder,#category:placeholder,input[type=number]:placeholder {
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

                -webkit-animation-duration:1.4s;
                -moz-animation-duration:1.4s;
                animation-duration:1.4s;
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
                animation-delay: 1.0;
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
var pDescription=document.myform.pDescription.value;
var pImage=document.myform.pImage.value;
var category =document.myform.category.value;

 
if (pName==null || pName==""){  
  alert("Enter product name...");  
  return false;  
} 
else if (pPrice==null || pPrice==""){  
  alert("Enter product price...");  
  return false;  
}
else if (pDescription==null || pDescription==""){  
  alert("Enter product description...");  
  return false;  
} else if(category == null || category == "")
{
    alert(category);  
     return false; 
}

}


</script> 
    
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shree Hari | Add Product</title>

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
    
    <!-- Page Preloder -->
    <%  
                                String checkUser=(String)session.getValue("shopEmail");
                                if(checkUser == "")
                                {
                                    
                                        response.sendRedirect("shoplogin.jsp");
                                    
                                       
                                }                          
  %> 
    <jsp:include page="ap-link.jsp"/>
    
    
    

    <br>
    <!-- Register Form Section Start -->
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <!-- Tabs Titles -->

                <!-- Icon -->
                <div class="fadeIn first">
                    <span class="one">Add Product</span>
                </div>

                <!-- Login Form -->
                <form method="post" action="addProductToDB.jsp" onsubmit="return validateform()" name="myform">
                    <input type="text" id="login" name="pName" class="fadeIn second" placeholder="Product Name">
                    <input type="number" id="login" name="pPrice" class="fadeIn third" placeholder="Product Price">
                    <input type="text" id="login" name="pDescription" class="fadeIn fourth" placeholder="Product Description">
                    <input type="file" id="login" name="pImage" size="100" class="fadeIn fifth" placeholder="Product Image">
                                        <input type="text" id="login" name="stock" class="fadeIn fourth" placeholder="Enter Stock">

                    <select name="category" id="category" class="fadeIn six" placeholder="Product Category">
                                    <option value="DryFood">Dry Food Grocery</option>
                                    <option value="Dairy">Milk and Dairy foods</option>
                                    <option value="Spices">Spices</option>
                                    <option value="Fresh">Fresh Produce</option>
                                    <option value="Perishables">Perishables</option>
                                    <option value="Grocery">Grocery</option>
                                    <option value="Beverages">Beverages</option>
                                    <option value="Other">Other</option>
                                    
                                    
                                  </select>
                    <input type="submit" class="fadeIn seven" value="ADD">
                </form>


            </div>
        </div>
        <!-- Register Form Section End -->
    
        <br>

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

