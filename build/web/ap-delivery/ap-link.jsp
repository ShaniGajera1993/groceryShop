


<!-- Start wrapper-->
 <div id="wrapper">

 <!--Start sidebar-wrapper-->
   <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
     <div class="brand-logo">
      <a href="index.html">
       <img src="../assets1/images/logo-icon.png" class="logo-icon" alt="logo icon">
       <h5 class="logo-text">Shree Hari Admin </h5>
     </a>
   </div>
   
   <ul class="sidebar-menu">
      <li class="sidebar-header">MAIN NAVIGATION</li>		
      
      <li>
        <a href="deliveryPage.jsp">
          <i class="fa fa-shopping-bag"></i>
		  <span>Home</span>
        </a>
		
      </li>
        
	  
     
      
   </div>
   <!--End sidebar-wrapper-->
 <%  
                                String checkUser=(String)session.getValue("deliveryBoyEmail");
                                if(checkUser == "")
                                {
                                    
                                        response.sendRedirect("index.jsp");
                                    
                                       
                                }                          
            %> 
    
<!--Start topbar header-->
<header class="topbar-nav">
    <nav class="navbar navbar-expand fixed-top">
        <ul class="navbar-nav mr-auto align-items-center">
        </ul>

        <li class="nav-item">
            <div class="ht-right">
                <%
                    try {
                        String username = (String) session.getValue("deliveryBoyEmail");
                        session.putValue("filterForCategory", "All");
                        session.putValue("filterForShop", "All");
                        if (username == "" || username == null) {


                %>
                <a href="index.jsp" class="login-panel">
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
	   