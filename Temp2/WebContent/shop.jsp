<%@page import="ClassModel.ClassVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ClassModel.ClassDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx">
<!-- �� ��ó ���� -->
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>G-CAP|�ֺ�����</title>
	
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
	
	<style>
		.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'����',sans-serif;font-size:12px;}
		.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
		.map_wrap {position:relative;width:100%;}
		#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
		.bg_white {background:#fff;}
		#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
		#menu_wrap .option{text-align: center;}
		#menu_wrap .option p {margin:10px 0;}  
		#menu_wrap .option button {margin-left:5px;}
		#placesList li {list-style: none;}
		#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
		#placesList .item span {display: block;margin-top:4px;}
		#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
		#placesList .item .info{padding:10px 0 10px 55px;}
		#placesList .info .gray {color:#8a8a8a;}
		#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
		#placesList .info .tel {color:#009900;}
		#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
		#placesList .item .marker_1 {background-position: 0 -10px;}
		#placesList .item .marker_2 {background-position: 0 -56px;}
		#placesList .item .marker_3 {background-position: 0 -102px}
		#placesList .item .marker_4 {background-position: 0 -148px;}
		#placesList .item .marker_5 {background-position: 0 -194px;}
		#placesList .item .marker_6 {background-position: 0 -240px;}
		#placesList .item .marker_7 {background-position: 0 -286px;}
		#placesList .item .marker_8 {background-position: 0 -332px;}
		#placesList .item .marker_9 {background-position: 0 -378px;}
		#placesList .item .marker_10 {background-position: 0 -423px;}
		#placesList .item .marker_11 {background-position: 0 -470px;}
		#placesList .item .marker_12 {background-position: 0 -516px;}
		#placesList .item .marker_13 {background-position: 0 -562px;}
		#placesList .item .marker_14 {background-position: 0 -608px;}
		#placesList .item .marker_15 {background-position: 0 -654px;}
		#pagination {margin:10px auto;text-align: center;}
		#pagination a {display:inline-block;margin-right:10px;}
		#pagination .on {font-weight: bold; cursor: default;color:#777;}
		#toTop { position: fixed; /* ������ ���� */ bottom: 100px; right: 50px; /* �ؿ��� 100px */ display: none; /* �������� ���� - �⺻������ �Ⱥ������� */ z-index: 9999; /* �������� ���� ������ z-��ǥ(���̾�) : 9999�Դϴ�. */ }

	</style>
</head>

<body>
<%
	ClassDAO dao = new ClassDAO();
	ArrayList<ClassVO> al = dao.nearClassSearch();
	

%>

	<img id="toTop" src="img/toTop.png" width=60 height=60 href="#">
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
    <div class="header__top__right__auth">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="index.jsp"><img src="img/index/logooo.png"></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><!-- <a href="./index.html">HOME</a></li> -->
                            <li><a href="./shop.html">�ֺ�����</a></li>
                            <li><a href="serch.html">���ɼ����׽�Ʈ</a>
                                <!-- <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul> -->
                            </li>
                            <li><a href="./blog.html">��üŬ����</a></li>
                            <li><a href="./contact.html">Ŀ�´�Ƽ</a></li>
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
                          	<span>Ŭ����</span>
                        </div>
                        <ul>
                            <li><a href="#">������ �����</a></li>
                            <li><a href="#">�����</a></li>
                            <li><a href="#">����</a></li>
                            <li><a href="#">�丮������</a></li>
                            <li><a href="#">����ŷ������Ʈ</a></li>
                            <li><a href="#">����</a></li>
                            <li><a href="#">�</a></li>
                            <li><a href="#">������</a></li>
                            <li><a href="#">����������</a></li>
                            <li><a href="#">������</a></li>
                            <li><a href="#">���ߤ�������</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    ī�װ�
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="ã���ô� ��̰� �����Ű���?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>062-6655-3509</h5>
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
    <section class="breadcrumb-section set-bg" data-setbg="img/shopp.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>�� �ֺ� ����</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            	<span>����</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container" style="width:100%;">
            <div class="row" style="width:100%;">
                <div class="col-lg-3 col-md-5" style="float:left;">
                	<div class="blog__sidebar" style="padding-top:0px;">
                        <div class="blog__sidebar__search">
                            <!-- �ּ�ã�� -->
                            <form action="#">
				                <div>
				                    <h3 class="join_title"><label for="phoneNo">����ġ ã��</label></h3>
				                    <span class="box int_id">
				                        <input style="display:none;" type="text" id="sample6_postcode" name="postcd" class="int" maxlength="20">
				                        <!-- <span class="step_url" type="button">���̵� �ߺ�üũ</span> -->
				                        
				                        <button class="step_url sbmitBtn" type="button" onclick="sample6_execDaumPostcode()" style="cursor:pointer; height:20px; margin-top:50px" >�ּ�ã��</button>
				                    </span>
				                    <span class="error_next_box"></span>    
				                </div>
				                <div>
				                    <h5 class="join_title"><!--<label for="phoneNo">-->����ġ</label></h5>
				                    <span class="box int_mobile">
				                        <input type="text" name="addr" id="sample6_address" class="int" maxlength="16" placeholder="�ּ�">
				                    </span>    
				                    <!-- <span class="error_next_box"></span>     -->
				                </div>
				                <div style="display:none;">
				                    <h3 class="join_title"><!--<label for="phoneNo">-->���ּ�</label></h3>
				                <span class="box int_mobile" id = "detail" id="addrress">
				                    <input type="text" name="addrdtl1" id="sample6_detailAddress" class="int detail" maxlength="16" placeholder="���ּ�">
				                </span>    
				                <span class="box int_mobile" id= "list" id="addrress">
				                    <input type="text" name="addrdtl2" id="sample6_extraAddress" class="int list" maxlength="16" placeholder="�����׸�">
				                </span>    
				                <!-- <span class="error_next_box"></span>     -->
				                </div>

                            </form>
                        </div>
                  		<div class="sidebar">
                        <div class="sidebar__item" style="display:none;">
                            <h4>����</h4>
                            <ul>
                                <li><a href="#">���걸</a></li>
                                <li><a href="#">����</a></li>
                                <li><a href="#">����</a></li>
                                <li><a href="#">�ϱ�</a></li>

                            </ul>
                        </div>
                        <div class="sidebar__item" style="display:none;">
                            <h4>�Ⱓ</h4>
                            <div class="price-range-wrap">
                                <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                    data-min="1" data-max="5">
                                    <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                    <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                    <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                </div>
                                <div class="range-slider">
                                    <div class="price-input">
                                        <input type="text" id="minamount">
                                        <input type="text" id="maxamount">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                        	<button id="mapSearch" onclick ="myPoint()" type="button" style="float:right; margin-right:20px; border: 1px solid #dddddd; border-radius: 0.2rem; color: #fff; background-color: #fd924d;">�˻��ϱ�</button>                        </div>
 
                    </div>
                </div>
            </div>
            <!-- map �� �ڸ�  -->
            <div class="map_wrap" style="width:75%;">
			    <div id="map" style="width:100%;height:500px;position:relative;overflow:hidden;"></div>
			

			</div>
			
			<div>
			<span style="margin-top:50px; margin-left:20px;"><h3 style="margin-left:20px;">���Ǹ���Ʈ</h3></span>
			    <section>
	    	<div id="container boardList">
	    	<table class="table table-hover">
				<tr "class_list">
					<th>����</th>
					<th>���Ǹ�</th>
					<th>�ּ�</th>
					<th>���</th>
				</tr>

				<%for(ClassVO vo : al){ %>
				<tr class="class_list" id=<%=vo.getC_seq() %>>
					<td class="class_list" id="class_seq"><%=vo.getC_seq() %></td>
					<td class="class_list" id="class_name"><a href="DetailPage.jsp?cnum=<%=vo.getC_seq()%>"><%=vo.getC_name() %></a></td>
					<td class="class_list" id="class_location"><%=vo.getC_location() %></td>					
					<td class="class_list" id="class_pay"><%=vo.getC_pay() %></td>
				</tr>
				<%} %>
			</table>
		</div>
		
	</section>
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
	<div id = 'x' style = 'display:none'></div>
	<div id = 'y' style = 'display:none'></div>
	<div id = 'distance' ></div>

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" charset="UTF-8"></script>
    <script src="js/findAddress.js"></script>


	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5a702c7fd840f10be902e425fe276119&libraries=services,clusterer,drawing"></script>
	<script  type="text/javascript" charset="utf-8">
	// �ּҷ� ��ǥ�� �˻��մϴ�
	$(function() { // ���̱� | ����� 
		$(window).scroll(function() { if ($(this).scrollTop() > 250) { //250 ������ ��ư�� �������ϴ�. 
			$('#toTop').fadeIn(); $('#toTop').css('left', $('#sidebar').offset().left); // #sidebar left:0 ��ǥ 
			} else {
				$('#toTop').fadeOut();
				} 
		}); 
	// ��ư Ŭ���� 
		$("#toTop").click(function() {
			$('html, body').animate({ 
				scrollTop : 0 
				// 0 ���� animation �̵��մϴ�.
				}, 400); // �ӵ� 400 
				return false; 
				}); 
	});		
	
	
		var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
		mapOption = {
			center : new kakao.maps.LatLng(35.1106066178919, 126.87748063846814), // ������ �߽���ǥ
			level : 3
		// ������ Ȯ�� ����
		};

		// ������ ǥ���� div��  ���� �ɼ�����  ������ �����մϴ�
		var map = new kakao.maps.Map(mapContainer, mapOption);

		
		
		//�ּ� ��ǥ ��ȯ��ü geocoder
		var geocoder = new kakao.maps.services.Geocoder();
		
		let x = document.getElementById('x'); 
		let y = document.getElementById('y'); 
		
		var myCoords = null;
		var classCoords = null;
		
		let myPoint = function(){
		
		let address = $("#sample6_address").val();
		
		geocoder.addressSearch(address, function(result, status) {
			
		    // ���������� �˻��� �Ϸ������ 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		        /*
		        x.innerHTML = result[0].x;
		        y.innerHTML = result[0].y;
		        
				myCoords = { 
					    latitude :   y.innerHTML,//����
					    longitude :  x.innerHTML //�浵
					};
				
				*/
				var imageSrc = 'img/myPoint.png', // ��Ŀ�̹����� �ּ��Դϴ�    
			    imageSize = new kakao.maps.Size(35, 51), // ��Ŀ�̹����� ũ���Դϴ�
			    imageOption = {offset: new kakao.maps.Point(27, 69)}; // ��Ŀ�̹����� �ɼ��Դϴ�. ��Ŀ�� ��ǥ�� ��ġ��ų �̹��� �ȿ����� ��ǥ�� �����մϴ�
				
			    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
			    
		        // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
		        var marker = new kakao.maps.Marker({
		            /*map: map,*/
		            position: coords,
		            image: markerImage
		        });
		        marker.setMap(map); 
		        // ����������� ��ҿ� ���� ������ ǥ���մϴ�
		        /*
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0; background-color: #ff914d; font-weight: bold; font-size: .875rem;border-radius: 0.2rem; border: 1px solid #dddddd; color: #fff;">���� ��ġ</div>'
		        });
		    	
		        
		        infowindow.open(map, marker);
*/
		        // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
		        map.setCenter(coords);
	
		     
		        // �����͸� �������� ���� jQuery�� ����մϴ�
		        // �����͸� ������ ��Ŀ�� �����ϰ� Ŭ�����ͷ� ��ü�� �Ѱ��ݴϴ�

		    } 
		});
		}
		


		
/*		
			function computeDistance(startCoords, destCoords) {
			    var startLatRads = degreesToRadians(startCoords.latitude);
			    var startLongRads = degreesToRadians(startCoords.longitude);
			    var destLatRads = degreesToRadians(destCoords.latitude);
			    var destLongRads = degreesToRadians(destCoords.longitude);

			    var Radius = 6371; //������ �ݰ�(km)
			    var distance = Math.acos(Math.sin(startLatRads) * Math.sin(destLatRads) +Math.cos(startLatRads)* Math.cos(destLatRads)*Math.cos(startLongRads - destLongRads))* Radius;

			    return distance;
			}

			function degreesToRadians(degrees) {
			    radians = (degrees * Math.PI)/180;
			    return radians;
			}
*/		
	/*	
		function nearClassSearch(){

						/* for�� start */	
						/*for(j = 0; j < index.length; j++){
							let classAddress = obj[index[j]];
							geocoder.addressSearch('����Ư����ġ�� ���ֽ� ÷�ܷ� 242', function(result, status) {
							        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
							        classCoords = { 
										    latitude : result[0].y,  //����
										    longitude : result[0].x  //�浵
										};
							        var distance = computeDistance(myCoords, classCoords)
							        
									if(distance <= 3){
										nearClass.push(index[j]);
									}
							       
						})
						
						}
						
		

						

				    

				
		}
		
		*/
	
		let json = {a:{x:1,y:2}}
		console.log()
		let arr = []
		
		
		
		
		
		$("#mapSearch").on('click', function(){
			
			 var obj = null;
			 var index = [];
			 	

			 	let nearClass = []
			 	
				$.ajax({
					type : "POST",
					url : "NearSearchClass",
					dataType : "json",
					contentType: "application/json; charset=utf-8",
					async:false,

					success : function(result){
						obj = result;
						console.log(result+"����")
						 // build the index
						for (var x in obj) {
							index.push(x); 
						}
						// sort the index 
						index.sort(function (a, b) {
							return a == b ? 0 : (a > b ? 1 : -1); 
						});
						
						
						
						for(let i =0 ; i<index.length;i++){
							
							let classAddress = obj[index[i]];
						
						geocoder.addressSearch(classAddress, function(result, status) {
					
						    // ���������� �˻��� �Ϸ������ 
						     if (status === kakao.maps.services.Status.OK) {

						        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

						        // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
						        var marker = new kakao.maps.Marker({
						            map: map,
						            position: coords,
						            clickable: true
						            
						        });
						        
						        marker.setMap(map);

							     // ��Ŀ�� Ŭ������ �� ��Ŀ ���� ǥ���� ���������츦 �����մϴ�
							     var iwContent = '<div style="padding:5px;">'+index[i]+'</div>', // ���������쿡 ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�
							         iwRemoveable = true; // removeable �Ӽ��� ture �� �����ϸ� ���������츦 ���� �� �ִ� x��ư�� ǥ�õ˴ϴ�
	
							     // ���������츦 �����մϴ�
							     var infowindow = new kakao.maps.InfoWindow({
							         content : iwContent,
							         removable : iwRemoveable
							     });
	
							     // ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
							     kakao.maps.event.addListener(marker, 'click', function() {
							           // ��Ŀ ���� ���������츦 ǥ���մϴ�
							           infowindow.open(map, marker);
							           document.getElementById(index[i]).scrollIntoView();
							           document.getElementById(index[i]).style.background = "rgba(253,146,77,0.3)"
							           setTimeout(() => document.getElementById(index[i]).style.background = "rgba(1,1,1,0)" , 3000);
							     });
						        


						    } 
						}); 
						}
						
						
					},					
					
					error: function(){
						
					}
				})
   
		})
	
		
	/*
	$("#mapSearch").on('click', function(){
		
	     var obj = null;
		 var index = [];
		 	

		 	let nearClass = []
		 	function ajaxCall(){
			$.ajax({
				type : "POST",
				url : "NearSearchClass",
				dataType : "json",
				contentType: "application/json; charset=utf-8",
				async:false,
				error: function(){
					
				},
				success : function(result){
					obj = result;
					console.log(result+"����")
					 // build the index
					for (var x in obj) {
						index.push(x); 
					}
					// sort the index 
					index.sort(function (a, b) {
						return a == b ? 0 : (a > b ? 1 : -1); 
					});
					
				},
				complete: function(result){
				 	console.log(index+"�ε�")
				 	console.log(obj+"����")
				 	for(j = 0; j < index.length; j++){
						let classAddress = obj[index[j]];
						console.log(classAddress)
				 	}
				}
					
				});
					
			}


		 	

		/*

		for(let i =0; i < )
		$.ajax({
			
			url : "http://api.vworld.kr/req/address?service=address&request=getcoord&version=2.0&crs=epsg:4326&address=%ED%9A%A8%EB%A0%B9%EB%A1%9C72%EA%B8%B8%2060&refine=true&simple=false&format=json&type=road&key=72F6DE55-2E9D-37F3-AC27-F3DD9C64508E",
			dataType : 'json',
			success : function(result){
 				
 				console.log(result.response.result.point.x)
 				
 			},
 			
 			error : function(){				
 				
 			}
			
		})
		
		
		
	})
		*/	
			
			
			
		
		
		
	</script>
	




</body>

</html>