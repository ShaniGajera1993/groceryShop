
<div class="pageloader"></div>
    <div class="infraloader is-active"></div>
    <!-- Mobile Navbar-->
    <!-- Mobile mode navbar -->
    <nav class="navbar mobile-navbar is-hidden-desktop is-hidden-tablet" aria-label="main navigation">
        <!-- Brand -->
        <div class="navbar-brand">
            <a class="navbar-item" href="index.jsp">
                <img src="assets/img/logo/nephos.svg" alt="">
            </a>

            <!-- Sidebar mode toggler icon -->
            <a id="sidebar-mode" class="navbar-item is-icon is-sidebar-toggler" href="javascript:void(0);">
                <i data-feather="sidebar"></i>
            </a>

            <!-- Mobile menu toggler icon -->
            <div class="navbar-burger">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
        <!-- Navbar mobile menu -->
        <div class="navbar-menu">
            <!-- Account -->
            <div class="navbar-item has-dropdown">
                <a href="account.jsp" class="navbar-link">
                    <img id="mobile-avatar" src="http://via.placeholder.com/250x250" data-demo-src="assets/img/avatars/altvatar.png" alt="">
                    <span id="mobile-username" class="is-heading">Welcome, Guest</span>
                </a>

                <!-- Mobile Dropdown -->
                <div class="navbar-dropdown">
                    <a href="index.jsp" class="navbar-item">Home</a>
                    <a href="cart-empty.jsp" class="navbar-item is-flex">
                        <span>Cart</span>
                        <!-- Number of items in Cart -->
                        <span id="mobile-cart-count" class="menu-badge">0</span>
                    </a>
                    <a href="account.jsp" class="navbar-item">Account</a>
                    <a href="wishlists.jsp" class="navbar-item">Wishlists</a>
                    <a href="orders.jsp" class="navbar-item">Orders</a>
                    <a id="mobile-login-link" href="authentication.jsp" class="navbar-item">Login</a>
                    <a id="mobile-register-link" href="authentication.jsp" class="navbar-item">Register</a>
                    <a id="mobile-logout-link" class="navbar-item is-hidden">Logout</a>
                </div>
            </div>

            <!-- More -->
            <div class="navbar-item has-dropdown">
                <a class="navbar-link">
                    <i data-feather="grid"></i>
                    <span class="is-heading">Categories</span>
                </a>

                <!-- Mobile Dropdown -->
                <div class="navbar-dropdown">
                    <a href="products.jsp" class="navbar-item">Shop-1</a>
                    <a href="products.jsp" class="navbar-item">Shop-2</a>
                    <a href="products.jsp" class="navbar-item">Shop-3</a>
                    <a href="products.jsp" class="navbar-item">Shop-4</a>
                    <a href="products.jsp" class="navbar-item">Shop-5</a>
                </div>
            </div>
        </div>
    </nav>
    <!-- /Mobile mode navbar -->
    <!-- Main Sidebar-->
    <div class="main-sidebar">
        <div class="sidebar-brand">
            <a href="index.jsp"><img src="assets/img/logo/nephos.svg" alt=""></a>
        </div>
        <div class="sidebar-inner">
            <ul class="icon-menu">
                <!-- Shop sidebar trigger -->
                <li>
                    <a href="javascript:void(0);" id="open-shop"><i data-feather="home"></i></a>
                </li> <!-- Cart sidebar trigger -->
                <li>
                    <a href="javascript:void(0);" id="open-cart"><i data-feather="shopping-cart"></i><span id="cart-dot" class="cart-items gelatine is-hidden"></span></a>
                </li> <!-- Search trigger -->
                <li>
                    <a href="javascript:void(0);" id="open-search"><i data-feather="search"></i></a>
                    <a href="javascript:void(0);" id="close-search" class="is-hidden is-inactive"><i data-feather="x"></i></a>
                </li> <!-- Shop Filters -->
                <li class="is-hidden">
                    <a id="open-filters"><i data-feather="filter"></i></a>
                </li> <!-- Shop Wishlist -->
                <li id="sidebar-wishlist-button" class="is-hidden">
                    <a class="sidebar-whishlist modal-trigger" data-modal="add-to-wishlist-modal"><i data-feather="heart"></i></a>
                </li>
            </ul>

            <!-- User account -->
            <ul class="bottom-menu">
                <li class="is-hidden-mobile">
                    <div class="small-auth-loader">
                        <div class="loader is-loading"></div>
                    </div>
                    <a id="login-link" href="authentication.jsp"><i data-feather="user"></i></a>
                    <a id="logout-link" class="is-hidden"><i data-feather="log-out"></i></a>
                </li>
                <li id="fold-link" class="fold-link">
                    <a><i data-feather="arrow-left"></i></a>
                </li>
            </ul>
        </div>
    </div>
    

    <!-- Shop quickview -->
    <div class="shop-quickview has-background-image" data-background="http://via.placeholder.com/1280x853" data-demo-background="assets/img/bg/sidebar.jpg">
        <div class="inner">
            <!-- Header -->
            <div class="quickview-header">
                <h2>Nephos</h2>
                <span id="close-shop-sidebar"><i data-feather="x"></i></span>
            </div>
            <!-- Shop menu -->
            <ul class="shop-menu">
                <li>
                    <a href="shop.jsp">
                        <span>Shop</span>
                        <i data-feather="grid"></i>
                    </a>
                </li>
                <li>
                    <a href="products.jsp">
                        <span>All Products</span>
                        <i data-feather="box"></i>
                    </a>
                </li>
                <li>
                    <a href="account.jsp">
                        <span>My Account</span>
                        <i data-feather="user"></i>
                    </a>
                </li>
                <li>
                    <a href="orders.jsp">
                        <span>My Orders</span>
                        <i data-feather="credit-card"></i>
                    </a>
                </li>
                <li>
                    <a href="wishlist.jsp">
                        <span>My Wishlists</span>
                        <i data-feather="heart"></i>
                    </a>
                </li>
            </ul>
            <!-- Profile image -->
            <ul class="user-profile">
                <li>
                    <a href="javascript:void(0);">
                        <img id="quickview-avatar" src="http://via.placeholder.com/250x250" data-demo-src="assets/img/avatars/altvatar.png" alt="">
                        <span class="user">
                                <span id="quickview-username">Guest</span>
                        <span id="quickview-cart-count"><var>0</var> <small>Items in Cart</small></span>
                        </span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- Cart quickview -->
    <div class="cart-quickview">
        <div class="inner">
            <!-- Header -->
            <div class="quickview-header">
                <h2>Quick Cart</h2>
                <span id="close-cart-sidebar"><i data-feather="x"></i></span>
            </div>
            <!-- Total and checkout -->
            <div class="cart-action">
                <span class="cart-total">
                        0.00
                    </span>
                <a href="cart.jsp" class="button view-cart-button primary-button upper-button raised is-bold">
                    <span>View Cart</span>
                </a>
                <a class="button update-cart-button upper-button is-bold is-hidden">
                    <span>Update</span>
                </a>
            </div>
            <!-- Cart quickview body -->
            <div class="cart-body">

                <!--Placeholder-->
                <div class="empty-cart has-text-centered is-hidden">
                    <img src="assets/img/icons/line/bag.svg" alt="">
                    <h3>Your cart is empty</h3>
                    <p>Start by adding products to it</p>
                    <a href="shop.jsp" class="button big-button rounded">Continue Shopping</a>
                    <small>You can create your account later</small>
                </div>

                <!--Loader-->
                <div class="cart-loader is-active">
                    <div class="loader is-loading"></div>
                </div>

                <ul class="shopping-cart-items">
                    <!-- Item -->
                    <li class="clearfix">
                        <img src="http://via.placeholder.com/250x250" data-demo-src="assets/img/products/office5.jpg" alt="" />
                        <span class="item-meta">
                                <span class="item-name">Cosy Chair</span>
                        <span class="item-price">
                                    <var>88.00</var> x <span>1</span>
                        </span>
                        </span>
                        <span class="quantity">
                                <div data-trigger="spinner" class="return-spinner">
                                    <input class="hidden-spinner" type="hidden" value="1" data-spin="spinner"
                                        data-rule="quantity" data-min="1" data-max="99">
                                    <a class="spinner-button is-remove" href="javascript:;" data-spin="down">
                                        <i data-feather="minus"></i>
                                    </a>
                                    <span class="spinner-value">1</span>
                        <a class="spinner-button is-add" href="javascript:;" data-spin="up">
                            <i data-feather="plus"></i>
                        </a>
            </div>
            </span>

            <span class="remove-item">
                                <i data-feather="x" class="has-simple-popover" data-content="Remove from Cart"
                                    data-placement="top"></i>
                            </span>
            </li>
            <!-- Item -->
            <li class="clearfix">
                <img src="http://via.placeholder.com/250x250" data-demo-src="assets/img/products/red-seat.png" alt="" />
                <span class="item-meta">
                                <span class="item-name">Red Seat</span>
                <span class="item-price">
                                    <var>45.00</var> x <span>1</span>
                </span>
                </span>
                <span class="quantity">
                                <div data-trigger="spinner" class="return-spinner">
                                    <input class="hidden-spinner" type="hidden" value="1" data-spin="spinner"
                                        data-rule="quantity" data-min="1" data-max="99">
                                    <a class="spinner-button is-remove" href="javascript:;" data-spin="down">
                                        <i data-feather="minus"></i>
                                    </a>
                                    <span class="spinner-value">1</span>
                <a class="spinner-button is-add" href="javascript:;" data-spin="up">
                    <i data-feather="plus"></i>
                </a>
        </div>
        </span>

        <span class="remove-item">
                                <i data-feather="x" class="has-simple-popover" data-content="Remove from Cart"
                                    data-placement="top"></i>
                            </span>
        </li>
        <!-- Item -->
        <li class="clearfix">
            <img src="http://via.placeholder.com/250x250" data-demo-src="assets/img/products/kids2.jpg" alt="" />
            <span class="item-meta">
                                <span class="item-name">Rabbit Lamp</span>
            <span class="item-price">
                                    <var>14.49</var> x <span>3</span>
            </span>
            </span>
            <span class="quantity">
                                <div data-trigger="spinner" class="return-spinner">
                                    <input class="hidden-spinner" type="hidden" value="3" data-spin="spinner"
                                        data-rule="quantity" data-min="1" data-max="99">
                                    <a class="spinner-button is-remove" href="javascript:;" data-spin="down">
                                        <i data-feather="minus"></i>
                                    </a>
                                    <span class="spinner-value">3</span>
            <a class="spinner-button is-add" href="javascript:;" data-spin="up">
                <i data-feather="plus"></i>
            </a>
    </div>
    </span>

    <span class="remove-item">
                                <i data-feather="x" class="has-simple-popover" data-content="Remove from Cart"
                                    data-placement="top"></i>
                            </span>
    </li>
    </ul>
    </div>
    </div>
    </div>
    <!-- Main wrapper -->
    <div class="shop-wrapper">

        <!-- Search overlay -->
        <div class="search-overlay"></div>

        <!-- Search input -->
        <div class="search-input-wrapper is-desktop is-hidden">
            <div class="field">
                <div class="control">
                    <input id="nephos-search" type="text" name="search" placeholder="Search a Product">
                    <span id="clear-search" role="button"><i data-feather="x"></i></span>
                    <span class="bar"></span>
                </div>
                <span class="search-help">Type the name of the product you are looking for</span>
            </div>
        </div>