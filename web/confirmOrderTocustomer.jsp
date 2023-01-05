<%-- 
    Document   : confirmOrderTocustomer
    Created on : 27 Feb, 2021, 9:19:42 AM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String total = request.getParameter("total");
%>


<html>
    <head>
        <style>
            .one{
                text-align: left;
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
                text-align: left;
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

            
            .row{
                padding: 30px;
                
            }
            h4{
                padding: 30px;
            }
            label{
                
            }
            #formContent {
                -webkit-border-radius: 10px 10px 10px 10px;
                border-radius: 10px 10px 10px 10px;
                background: #fff;
                padding: 30px;
                margin: 30px;
                width: 90%;
                max-width: 1000px;
                position: relative;
                padding: 0px;
                -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
                box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
                text-align: left;
            }

            #formFooter {
                background-color: #f6f6f6;
                border-top: 1px solid #dce8f1;
                padding: 25px;
                text-align: left;
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
                text-align: left;
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
                text-align: left;
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
    
var fname=document.myform.fName.value;  
var lname=document.myform.lName.value;
var pNumber=document.myform.pNumber.value;
var email=document.myform.email.value;
var street=document.myform.street.value;
var city=document.myform.city.value;
var pincode=document.myform.pincode.value;

 

 if (fname==null || fname==""){  
  alert("Enter first name...");  
  return false;  
}
else if (lname==null || lname==""){  
  alert("Enter last name...");  
  return false;  
}
else if (pNumber==null || pNumber==""){  
  alert("Enter Mobile Number...");  
  return false;  
}
else if(pNumber.length != 10){  
  alert("Enter correct number..");  
  return false;  
} 
else if (email==null || email==""){  
  alert("Enter email...");  
  return false;  
} 
else if(!ValidateEmail(email))
{
    alert("Enter Valid Email");
    return false;
}
else if (street==null || street==""){  
alert("Enter street ...");  
return false;  
}
else if (city==null || city==""){  
alert("Enter city ...");  
return false;  
}
else if (pincode==null || pincode==""){  
alert("Enter pincode ...");  
return false;  
}
else if(pincode.length != 6){  
  alert("Enter correct pincode.");  
  return false;  
} 
}  

function ValidateEmail(mail) 
{
 if (/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(mail))
  {
    return (true);
  }
    
    return (false);
}
</script> 
        
        
         <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Varni Enterprise</title>

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

        <section class="checkout-section spad">
        <div class="container">
           
             <div class="wrapper fadeInDown">
            <div id="formContent">
                 <br>
            
            <form action="addOrderToDB.jsp" method="post" class="checkout-form" name="myform" onsubmit="return validateform()">
                <div class="row"> 
                    <div class="col-lg-6">
                        
                        <%
                        String fName = "";
                        String lName = "";
                        String pNumber = "";
                        String email = "";
                        String street = "";
                        String city = "";
                        String pincode = "";


                                                            String username1=(String)session.getValue("username");

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
                                                            String sql ="select * from deliveryadd";
                                                            resultSet1 = statement1.executeQuery(sql);
                                                            while(resultSet1.next())
                                                            {
                                                                if(resultSet1.getString("userEmail").equals(username1))
                                                                {

                                                                    fName = resultSet1.getString("fname");
                                                                    lName = resultSet1.getString("lname");
                                                                    pNumber = resultSet1.getString("phone");
                                                                    email = resultSet1.getString("addressEmail");
                                                                    street = resultSet1.getString("street");
                                                                    city = resultSet1.getString("city");
                                                                    pincode = resultSet1.getString("pincode");
                                                                }

                                                            }
                                                            connection1.close();
                                                            } catch (Exception e)
                                                            {
                                                            out.println("An exception occurred: " + e.getMessage());
                                                            }

                        %>
                        
                        
                        <h4>Order Address</h4>
                        <div class="row">
                            <div class="col-lg-6">
                                <label for="fir">First Name<span>*</span></label>
                                <input type="text" id="fir" name="fName" value="<%out.println(fName);%>">
                            </div>
                            <div class="col-lg-6">
                                <label for="last">Last Name<span>*</span></label>
                                <input type="text" id="last" name="lName" value="<%out.println(lName);%>">
                            </div>
                            <div class="col-lg-12">
                                <label for="zip">PhoneNumber<span>*</span></label>
                                <input type="text" id="zip" name="pNumber" value="<%out.println(pNumber);%>">
                            </div>
                            <div class="col-lg-12">
                                <label for="cun-name">Email *</label>
                                <input type="text" id="cun-name" name="email"value="<%out.println(email);%>">
                            </div>
                            
                            <div class="col-lg-12">
                                <label for="street">Street Address<span>*</span></label>
                                <input type="text" id="street" class="street-first" name="street" value="<%out.println(street);%>">
                               
                            </div>
                             <div class="col-lg-12">
                                <label for="town">Town / City<span>*</span></label>
                                <input type="text" id="town" name="city" value="<%out.println(city);%>">
                            </div>
                            <div class="col-lg-12">
                                <label for="zip">Postcode / ZIP *</label>
                                <input type="text" id="zip" name="pincode" value="<%out.println(pincode);%>">
                            </div>
                            
                           
                           
                           
                           
                        </div>
                    </div>
                    <div class="col-lg-6">
                        
                        <div class="place-order">
                            <h4>Your Order</h4>
                            <div class="order-total">
                                <ul class="order-table">
                                    <li>Product <span>Total</span></li>
                                    
                                    
 <%

String username=(String)session.getValue("username");

    

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
String sql ="select * from cartdetails";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
    if(resultSet.getString("userEmail").equals(username))
    {
       %>
 
       <li class="fw-normal"><%=resultSet.getString("productName") %>   x  <%=resultSet.getString("quantity") %> 
           
           
           <span><% int preTotal =Integer.parseInt(resultSet.getString("productPrice")) * Integer.parseInt(resultSet.getString("quantity"));
               
              out.println(preTotal);
                                    
                                        %>  ₹</span></li>
       
       <%
          
          
    }
    
}
connection.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    <br>
                                    <li class="total-price">Total <span><%out.println(total);%>₹</span></li>
                                </ul>
                                <div class="payment-check">
                                    <div class="pc-item">
                                        Paymemt Method<br><br>
                                        <label >
                                            * Cash On Delivery
                                            
                                            <span ></span>
                                        </label>
                                    </div>
                                    
                                </div>
                                <div class="order-btn">
                                    <button type="submit" class="site-btn place-btn">Place Order</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
                                 <br>
                                
            </div>
                               
             </div>
        </div>
    </section>
                                            <jsp:include page="ap-link2.jsp"/>

    </body>
</html>
