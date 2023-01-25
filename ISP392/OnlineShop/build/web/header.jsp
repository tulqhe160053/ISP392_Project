<%-- 
    Document   : header
    Created on : Jan 25, 2023, 12:31:34 AM
    Author     : Tu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Start Header Area -->
        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="navbar-brand logo_h" href="home"><img src="img/logo.png" alt=""></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav ml-auto">
                                <li class="nav-item active"><a class="nav-link" href="home">Home</a></li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                       aria-expanded="false">Blog</a>
                                </li>
                                <li class="nav-item submenu dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                       aria-expanded="false">Sign in</a>
                                </li>
                                <!--                                <li class="nav-item submenu dropdown">
                                                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                                                       aria-expanded="false">Pages</a>
                                                                    <ul class="dropdown-menu">
                                                                        <li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
                                                                        <li class="nav-item"><a class="nav-link" href="tracking.html">Tracking</a></li>
                                                                        <li class="nav-item"><a class="nav-link" href="elements.html">Elements</a></li>
                                                                    </ul>
                                                                </li>-->
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="nav-item">
                                    <a href="#" class="cart">
                                        <span class="ti-bag position-relative"></span>
                                    </a>                                
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </header>
        <!-- End Header Area -->