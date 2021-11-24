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
		.map_wrap {position:relative;width:100%;height:500px;}
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
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
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
                            <li><a href="./blog.html">���Ǽ�������</a></li>
                            <li><a href="./contact.html">Ŀ�´�Ƽ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="shoping-cart.html"><i class="fa fa-heart"></i> <span>3</span></a></li>
                        </ul>
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
                                    ī�װ���
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
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
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
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                	<div class="blog__sidebar">
                        <div class="blog__sidebar__search">
                            <!-- �ּ�ã�� -->
                            <form action="#">
				                <div>
				                    <h3 class="join_title"><label for="phoneNo">����ġ ã��</label></h3>
				                    <span class="box int_id">
				                        <input style="display:none;" type="text" id="sample6_postcode" name="postcd" class="int" maxlength="20">
				                        <!-- <span class="step_url" type="button">���̵� �ߺ�üũ</span> -->
				                        
				                        <button class="step_url sbmitBtn" type="button" onclick="sample6_execDaumPostcode()" style="cursor:pointer;">�ּ�ã��</button>
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
                        <div class="sidebar__item">
                            <h4>����</h4>
                            <ul>
                                <li><a href="#">���걸</a></li>
                                <li><a href="#">����</a></li>
                                <li><a href="#">����</a></li>
                                <li><a href="#">�ϱ�</a></li>

                            </ul>
                        </div>
                        <div class="sidebar__item">
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
                        	<button id="nearClassSearch" type="button" onclick="nearClassSearch()">�˻��ϱ�</button>
                        </div>
 
                    </div>
                </div>
            </div>
            <!-- map �� �ڸ�  -->
            <div class="map_wrap">
			    <div id="map" style="width:70%;height:100%;position:relative;overflow:hidden;"></div>
			
			    <div id="menu_wrap" class="bg_white">
			        <div class="option">
			            <div>
			                <form onsubmit="searchPlaces(); return false;">
			                    Ű���� : <input type="text" value="���¿� ����" id="keyword" size="15"> 
			                    <button type="submit">�˻��ϱ�</button> 
			                </form>
			            </div>
			        </div>
			        <hr>
			        <ul id="placesList"></ul>
			        <div id="pagination"></div>
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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" charset="UTF-8"></script>
    <script src="js/findAddress.js"></script>


	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5a702c7fd840f10be902e425fe276119&libraries=services,clusterer,drawing"></script>
	<script charset="utf-8">
		var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
			level : 3
		// ������ Ȯ�� ����
		};

		// ������ ǥ���� div��  ���� �ɼ�����  ������ �����մϴ�
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		var geocoder = new kakao.maps.services.Geocoder();

		// �ּҷ� ��ǥ�� �˻��մϴ�
		
		
		function nearClassSearch(){
		
		

		
		var obj = null;
		
		var index = [];
		
		$.ajax({
			type : "POST",
			url : "NearSearchClass",
			dataType : "json",
			contentType: "application/json; charset=utf-8",
			success : function(result){
				
				obj = result;
				
				index = []; // build the index
				
				for (var x in obj) {
					index.push(x); 
				} // sort the index 
				index.sort(function (a, b) {
					return a == b ? 0 : (a > b ? 1 : -1); 
				});
				
			},
			error : function(){
				
			}
			
				
		})
		
		for(let i; i < index.length; i++){
		
		let classAddress = obj.index[i]
		
		let nearClass = []
		
		geocoder.addressSearch(address, function(result, status) {		    

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		        
		        console.log(result[0].x)
		     })
		
		}
		
		let address = $("#sample6_address").val()
		
		geocoder.addressSearch(address, function(result, status) {
			
			
		    // ���������� �˻��� �Ϸ������ 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		        
		        console.log(result[0].x)
		        
		        console.log(coords)

		        // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
		        map.setCenter(coords);
		    } 
		});
		
		
		}
		
		
	</script>
	
	<script>
		// ��Ŀ�� ���� �迭�Դϴ�
		var markers = [];
		
		var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
		    mapOption = {
		        center: new kakao.maps.LatLng(37.566826, 126.9786567), // ������ �߽���ǥ
		        level: 3 // ������ Ȯ�� ����
		    };  
		
		// ������ �����մϴ�    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// ��� �˻� ��ü�� �����մϴ�
		var ps = new kakao.maps.services.Places();  
		
		// �˻� ��� ����̳� ��Ŀ�� Ŭ������ �� ��Ҹ��� ǥ���� ���������츦 �����մϴ�
		var infowindow = new kakao.maps.InfoWindow({zIndex:1});
		
		// Ű����� ��Ҹ� �˻��մϴ�
		searchPlaces();
		
		// Ű���� �˻��� ��û�ϴ� �Լ��Դϴ�
		function searchPlaces() {
		
		    var keyword = document.getElementById('keyword').value;
		
		    if (!keyword.replace(/^\s+|\s+$/g, '')) {
		        alert('Ű���带 �Է����ּ���!');
		        return false;
		    }
		
		    // ��Ұ˻� ��ü�� ���� Ű����� ��Ұ˻��� ��û�մϴ�
		    ps.keywordSearch( keyword, placesSearchCB); 
		}
		
		// ��Ұ˻��� �Ϸ���� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
		function placesSearchCB(data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {
		
		        // ���������� �˻��� �Ϸ������
		        // �˻� ��ϰ� ��Ŀ�� ǥ���մϴ�
		        displayPlaces(data);
		
		        // ������ ��ȣ�� ǥ���մϴ�
		        displayPagination(pagination);
		
		    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
		
		        alert('�˻� ����� �������� �ʽ��ϴ�.');
		        return;
		
		    } else if (status === kakao.maps.services.Status.ERROR) {
		
		        alert('�˻� ��� �� ������ �߻��߽��ϴ�.');
		        return;
		
		    }
		}

		// �˻� ��� ��ϰ� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
		function displayPlaces(places) {
		
		    var listEl = document.getElementById('placesList'), 
		    menuEl = document.getElementById('menu_wrap'),
		    fragment = document.createDocumentFragment(), 
		    bounds = new kakao.maps.LatLngBounds(), 
		    listStr = '';
		    
		    // �˻� ��� ��Ͽ� �߰��� �׸���� �����մϴ�
		    removeAllChildNods(listEl);
		
		    // ������ ǥ�õǰ� �ִ� ��Ŀ�� �����մϴ�
		    removeMarker();
		    
		    for ( var i=0; i<places.length; i++ ) {
		
		        // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
		        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
		            marker = addMarker(placePosition, i), 
		            itemEl = getListItem(i, places[i]); // �˻� ��� �׸� Element�� �����մϴ�
		
		        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
		        // LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
		        bounds.extend(placePosition);
		
		        // ��Ŀ�� �˻���� �׸� mouseover ������
		        // �ش� ��ҿ� ���������쿡 ��Ҹ��� ǥ���մϴ�
		        // mouseout ���� ���� ���������츦 �ݽ��ϴ�
		        (function(marker, title) {
		            kakao.maps.event.addListener(marker, 'mouseover', function() {
		                displayInfowindow(marker, title);
		            });
		
		            kakao.maps.event.addListener(marker, 'mouseout', function() {
		                infowindow.close();
		            });
		
		            itemEl.onmouseover =  function () {
		                displayInfowindow(marker, title);
		            };
		
		            itemEl.onmouseout =  function () {
		                infowindow.close();
		            };
		        })(marker, places[i].place_name);
		
		        fragment.appendChild(itemEl);
		    }
		
		    // �˻���� �׸���� �˻���� ��� Elemnet�� �߰��մϴ�
		    listEl.appendChild(fragment);
		    menuEl.scrollTop = 0;
		
		    // �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
		    map.setBounds(bounds);
		}
		
		// �˻���� �׸��� Element�� ��ȯ�ϴ� �Լ��Դϴ�
		function getListItem(index, places) {
		
		    var el = document.createElement('li'),
		    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
		                '<div class="info">' +
		                '   <h5>' + places.place_name + '</h5>';
		
		    if (places.road_address_name) {
		        itemStr += '    <span>' + places.road_address_name + '</span>' +
		                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
		    } else {
		        itemStr += '    <span>' +  places.address_name  + '</span>'; 
		    }
		                 
		      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
		                '</div>';           
		
		    el.innerHTML = itemStr;
		    el.className = 'item';
		
		    return el;
		}
		
		// ��Ŀ�� �����ϰ� ���� ���� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
		function addMarker(position, idx, title) {
		    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // ��Ŀ �̹��� url, ��������Ʈ �̹����� ���ϴ�
		        imageSize = new kakao.maps.Size(36, 37),  // ��Ŀ �̹����� ũ��
		        imgOptions =  {
		            spriteSize : new kakao.maps.Size(36, 691), // ��������Ʈ �̹����� ũ��
		            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // ��������Ʈ �̹��� �� ����� ������ �»�� ��ǥ
		            offset: new kakao.maps.Point(13, 37) // ��Ŀ ��ǥ�� ��ġ��ų �̹��� �������� ��ǥ
		        },
		        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
		            marker = new kakao.maps.Marker({
		            position: position, // ��Ŀ�� ��ġ
		            image: markerImage 
		        });
		
		    marker.setMap(map); // ���� ���� ��Ŀ�� ǥ���մϴ�
		    markers.push(marker);  // �迭�� ������ ��Ŀ�� �߰��մϴ�
		
		    return marker;
		}
		
		// ���� ���� ǥ�õǰ� �ִ� ��Ŀ�� ��� �����մϴ�
		function removeMarker() {
		    for ( var i = 0; i < markers.length; i++ ) {
		        markers[i].setMap(null);
		    }   
		    markers = [];
		}
		
		// �˻���� ��� �ϴܿ� ��������ȣ�� ǥ�ô� �Լ��Դϴ�
		function displayPagination(pagination) {
		    var paginationEl = document.getElementById('pagination'),
		        fragment = document.createDocumentFragment(),
		        i; 
		
		    // ������ �߰��� ��������ȣ�� �����մϴ�
		    while (paginationEl.hasChildNodes()) {
		        paginationEl.removeChild (paginationEl.lastChild);
		    }
		
		    for (i=1; i<=pagination.last; i++) {
		        var el = document.createElement('a');
		        el.href = "#";
		        el.innerHTML = i;
		
		        if (i===pagination.current) {
		            el.className = 'on';
		        } else {
		            el.onclick = (function(i) {
		                return function() {
		                    pagination.gotoPage(i);
		                }
		            })(i);
		        }
		
		        fragment.appendChild(el);
		    }
		    paginationEl.appendChild(fragment);
		}
		
		// �˻���� ��� �Ǵ� ��Ŀ�� Ŭ������ �� ȣ��Ǵ� �Լ��Դϴ�
		// ���������쿡 ��Ҹ��� ǥ���մϴ�
		function displayInfowindow(marker, title) {
		    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
		
		    infowindow.setContent(content);
		    infowindow.open(map, marker);
		}
		
		 // �˻���� ����� �ڽ� Element�� �����ϴ� �Լ��Դϴ�
		function removeAllChildNods(el) {   
		    while (el.hasChildNodes()) {
		        el.removeChild (el.lastChild);
		    }
		}
		</script>



</body>

</html>