<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="sortcut icon" type="image/x-icon" href="img/new/titleLogo.png">
    <title>header</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

   

    <style>
        .a_margin {

            margin-left: 1rem;
            margin-right: 0;

        }

        #divLogin {
            text-align: right;
        }

    </style>

</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="header__top__right__auth">
            <a href=""><i class="fa fa-user"></i> �α���</a>
        </div>

        <br>
        <div class="header__top__right__auth">
            <a href="#"><i class="fa fa-user"></i> �� ��ó ����</a>
        </div>
        <br>
        <div class="header__top__right__auth">
            <a href="#"><i class="fa fa-user"></i> ���� ���� �׽�Ʈ</a>
        </div>
        <br>
        <div class="header__top__right__auth">
            <a href="#"><i class="fa fa-user"></i> ���� ��������</a>
        </div>
        <br>
        <div class="header__top__right__auth">
            <a href="#"><i class="fa fa-user"></i> Ŀ�´�Ƽ</a>
        </div>
    </div>
   
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul style="text-align:center;">
                            <!-- <li class="active"><a href="./index.html">HOME</a></li> -->
                            <li><a href="./GPSClass.html">�� ��ó ����</a></li>
                            <li><a href="#">���ɼ����׽�Ʈ</a>
                                <!--  <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>-->
                            </li>
                            <li><a href="./blog.html">���Ǽ�������</a></li>
                            <li><a href="./contact.html">Ŀ�´�Ƽ</a></li>
                        </ul>
                    </nav>

                    </div>
                    <!-- <div class="col-lg-3" style="width: 270px;">
                    <div class="header__cart" id="divLogin" style="width: 270px;">
                        <div class="header__top__right__auth">
                            <a href="Login.html" class="a_margin"> Login</a>
                        </div>
                        <div class="header__top__right__auth">
                            <a href="../join/join.html" class="a_margin"> ȸ������</a>
                        </div>
                    </div>
                    </div> -->

                    <!--
                    ��Ʈ, ��ٱ��� �޴� ������-->
                    
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">item: <span>$150.00</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>

            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Ŭ����</span>
                        </div>
                        <ul>
                            <li><a href="#">����</a></li>
                            <li><a href="#">�̼�</a></li>
                            <li><a href="#">����</a></li>
                            <li><a href="#">�丮</a></li>
                            <li><a href="#">����</a></li>
                            <li><a href="#">�ǰ�</a></li>
                            <li><a href="#">��ȭ</a></li>
                            <li><a href="#">����</a></li>
                            <li><a href="#">����</a></li>
                            <li><a href="#">��ǻ�ͤ�IT</a></li>
                            <!-- <li><a href="#">���ߤ�������</a></li> -->
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9" style="height: 60px;">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <!-- <div class="hero__search__categories"> 
                                    ī�װ�
                                    <span class="arrow_carrot-down"></span>
                                </div>-->
                                <input type="text" placeholder="ã���ô� ��̰� �����Ű���?">
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
       
   
   
   
   </body>
   
   </html>
</body>
</html>