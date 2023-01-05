
<style>
    .depart-btn{
        background-color:white;
        color:black;
    }
    .search input[type=text]{ 
        width:300px; 
        height:25px; 
        border-radius:25px; 
        border: none; 
    } 
          
    .search{ 
        float:right; 
        margin:7px; 
    } 
          
    .search button{ 
        background-color: blueviolet; 
        color: #f2f2f2; 
        float: right; 
        padding: 5px 10px; 
        margin-right: 16px; 
        font-size: 12px; 
        border: none; 
        cursor: pointer; 
    }  
</style>

<!-- Start wrapper-->
<div id="wrapper">

    <!--Start sidebar-wrapper-->
    <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
        <div class="brand-logo">
            <a href="index.html">
                <img src="./assets1/images/logo-icon.png" class="logo-icon" alt="logo icon">
                <h5 class="logo-text">Shree Hari</h5>
            </a>
        </div>

        <ul class="sidebar-menu">
            <li class="sidebar-header">MAIN NAVIGATION</li>



            <li>
                <a href="index.jsp">
                    <i class="fa fa-home"></i>
                    <span>Home </span>
                </a>

            </li>

            <li>
                <a href="shop.jsp">
                    <i class="fa fa-shopping-bag"></i>
                    <span>Shop</span>
                </a>

            </li>

            <li>
                <a href="products.jsp">
                    <i class="fa fa-product-hunt"></i>
                    <span>Product</span>
                </a>

            </li>
            <%
                try {
                    String username = (String) session.getValue("username");
                    if (username == "" || username == null) {

                    } else {

            %>
            <li>
                <a href="./contact.jsp">
                    <i class="fa fa-shopping-cart"></i>
                    <span>Cart</span>
                </a>
            </li>

            <%                                        }
                } catch (Exception e) {
                    out.println(e.getMessage());
                }


            %>


            </li>  

        </ul>

    </div>
    <!--End sidebar-wrapper-->
    <%     String checkUser = (String) session.getValue("shopEmail");
        if (checkUser == "") {

            response.sendRedirect("shoplogin.jsp");

        }
    %> 

    <!--Start topbar header-->
    <header class="topbar-nav">
        <nav class="navbar navbar-expand fixed-top">
            <ul class="navbar-nav mr-auto align-items-center">

            </ul>
            <li class="nav-item" >
               <div class="search"> 
            <form action="SearchShop.jsp"> 
                <input type="text"
                    placeholder=" Search Shop"
                    name="SSearch"> 
                <button> 
                    <i class="fa fa-search"
                        style="font-size: 18px;"> 
                    </i> 
                </button> 
            </form> 
        </div> 
            </li>

            <li class="nav-item">
                <div class="ht-right">
                    <%
                        try {
                            String username = (String) session.getValue("username");
                            session.putValue("filterForCategory", "All");
                            session.putValue("filterForShop", "All");
                            if (username == "" || username == null) {


                    %>
                    <a href="login.jsp" class="login-panel">
                        <i class="fa fa-user"></i>
                        <span>Login</span>
                    </a>    
                    <%                                               } else {
                    %>
                    <div class="nav-item">          
                        <div class="nav-depart">
                            <div class="depart-btn">

                                <span class="user"><%out.println(username);%></span>
                                <ul class="depart-hover">

                                    <li><a href="#">Profile</a></li>
                                    <li><a href="logout.jsp">Logout</a></li>

                                </ul>
                            </div>
                        </div>
                    </div>    
                    <%
                            }
                        } catch (Exception e) {
                            out.println(e.getMessage());
                        }

                    %> 
                </div>          
                </div>
            </li>
            </div>
    </header>
    <!--End topbar header-->


    <div class="clearfix"></div>

    <div class="content-wrapper">
        <div class="container-fluid">

            <div class="card mt-3">