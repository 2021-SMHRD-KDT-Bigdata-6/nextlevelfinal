<%@page import="ClassModel.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="EUC-KR">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>G-CAP|전체클래스</title>
	
	<link rel="icon" href="img/portfolio.png">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
    <link href="icheck-1.0.3/skins/flat/aero.css" rel="stylesheet">
	
</head>

<body>

<%

request.setCharacterEncoding("EUC-KR");
String check=request.getParameter("check");
ArrayList<ClassVO> al = new ArrayList<ClassVO>();
String cate="";
if(check==null){
	System.out.println(check);
cate = request.getParameter("cate");
session.setAttribute("cate", cate);
ClassDAO dao = new ClassDAO();
al = dao.Search(cate);
}else if (check.equals("1")){
	System.out.println(check);
cate = (String)session.getAttribute("cate");
String[] location = (String[])session.getAttribute("location");
String[] time = (String[])session.getAttribute("time");
String[] type = (String[])session.getAttribute("type");

ClassDAO dao = new ClassDAO();
al = dao.cateSearch(location, time, type, cate);
}
%>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="index.jsp"><img src="index.jsp" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="header__top__left">
                        </div>
                    </div>
                    <div class="col-lg-6">
                    </div>
                </div>
            </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="index.jsp"><img src="img/index/logooo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><!-- <a href="./index.html">H</a></li> -->
                            <li><a href="./shop.html">주변강의</a></li>
                            <li><a href="serch.html">관심성향테스트</a>
                                <!-- <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul> -->
                            </li>
                            <li><a href="./blog.html">전체클래스</a></li>
                            <li><a href="./contact.html">커뮤니티</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>클래스</span>
                        </div>
                        <ul>
                           	<li><a href="ClassList.jsp?cate=건강">건강</a></li>
							<li><a href="ClassList.jsp?cate=미술">미술</a></li>
							<li><a href="ClassList.jsp?cate=음악">음악</a></li>
							<li><a href="ClassList.jsp?cate=요리">요리</a></li>
							<li><a href="ClassList.jsp?cate=공예">공예</a></li>
							<li><a href="ClassList.jsp?cate=육아">육아</a></li>
							<li><a href="ClassList.jsp?cate=어학">어학</a></li>
							<li><a href="ClassList.jsp?cate=문화">문화</a></li>
							<li><a href="ClassList.jsp?cate=문학">문학</a></li>
							<li><a href="ClassList.jsp?cate=컴퓨터ㆍIT">컴퓨터ㆍIT</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="MainSearchClass.jsp">
                                <div class="hero__search__categories">
                                    카테고리
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="찾으시는 취미가 있으신가요?" name = "Searchs">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>062-655-3509</h5>
                                <span>AM 09:00 ~ PM 06:00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/index.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2><%=cate%>클래스</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>전체클래스</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    
    <div class="filter__item">
                        <div class="row">
                            <div id="checkbox" style="border:border:1px,solid,black; width:100%;text-align: center;">
                            <form action="CateCon">
                        	<strong>위치 | </strong>
                        	동구  <input type="checkbox" name="location" value="동구" class="location">
                        	서구  <input type="checkbox" name="location" value="서구" class="location">
                        	북구  <input type="checkbox" name="location" value="북구" class="location">
                        	남구  <input type="checkbox" name="location" value="남구" class="location">
                        	광산구  <input type="checkbox" name="location" value="광산구" class="location">
                        	<br><br>
                        	<strong>시간 | </strong>
                        	평일 오전타임  <input type="checkbox" name="time" value="평일 오전타임">
                        	평일 오후타임  <input type="checkbox" name="time" value="평일 오후타임">
                        	평일 저녁타임  <input type="checkbox" name="time" value="평일 저녁타임">
                        	주말타임  <input type="checkbox" name="time" value="주말타임">
                        	<br><br>
                        	<strong>유형 | </strong>
                        	향유형  <input type="checkbox" name="type" value="향유형">
                        	참여형  <input type="checkbox" name="type" value="참여형">
                        	수강형  <input type="checkbox" name="type" value="수강형">
                        	<br><br>
                        	<div class="enter"><input type="submit" value ="검색"></div>
                        	<hr color="black">
                            </form>
                           </div>
                           <br>
                         
                                     <%for (ClassVO vo : al){%>
                         <div class = "offset col-3 col-3 offset col-3 m-0">          
                         <div class="product__item" style="text-align: center">
                         <a href="DetailCon?cnum=<%=vo.getC_seq()%>"><img id ="imgs" src="img/pic/<%=vo.getC_seq()%>.jpg" style = "length:200px; width:270px"></a>	
                             <span style="display:none"><%=vo.getC_category1() %></span>
                             <div class="product__item__text">
                                 <h5><a href="DetailCon?cnum=<%=vo.getC_seq()%>"><%=vo.getC_name() %></a></h5>
                                 <h6>시작일자 : <%=vo.getC_start_dt() %></h6>
                                 <h6>종료일자 : <%=vo.getC_end_dt() %></h6>
                             </div>
                         </div>
                     </div>
                     <%}%>
                </div>
            </div>
        </div>
         
    </section>
    <!-- Product Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer> 
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>

</body>

</html>