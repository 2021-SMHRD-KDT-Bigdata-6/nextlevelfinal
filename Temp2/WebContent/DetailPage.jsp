<!DOCTYPE html>
<%@page import="ClassModel.ClassVO"%>
<%@page import="ClassModel.ClassDAO"%>
<html lang="zxx">
<!-- GIT -->
<head>
    <meta charset="EUC-KR">
    <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="EUC-KR"%>
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>G-CAP|Ŭ���� �Ұ�</title>
	
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
    <link rel="stylesheet" href="css/ApplyModal.css" type="text/css">
</head>

<body>

<%
//request.setCharacterEncoding("EUC-KR");
//response.setContentType("text/html; charset=EUC-KR");
Integer cnum = (Integer) application.getAttribute("cnum");
ClassDAO dao = new ClassDAO();
ClassVO vo = dao.show(cnum);
int distnum = dao.DistinctClass(cnum);

%>

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
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><!-- <a href="./index.html">H</a></li> -->
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
                           	<li><a href="ClassList.jsp?cate=�ǰ�">�ǰ�</a></li>
							<li><a href="ClassList.jsp?cate=�̼�">�̼�</a></li>
							<li><a href="ClassList.jsp?cate=����">����</a></li>
							<li><a href="ClassList.jsp?cate=�丮">�丮</a></li>
							<li><a href="ClassList.jsp?cate=����">����</a></li>
							<li><a href="ClassList.jsp?cate=����">����</a></li>
							<li><a href="ClassList.jsp?cate=����">����</a></li>
							<li><a href="ClassList.jsp?cate=��ȭ">��ȭ</a></li>
							<li><a href="ClassList.jsp?cate=����">����</a></li>
							<li><a href="ClassList.jsp?cate=��ǻ�ͤ�IT">��ǻ�ͤ�IT</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="/pro/MainSearchClass.jsp">
                                <div class="hero__search__categories">
                                    ī�װ�
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="ã���ô� ��̰� �����Ű���?" name ="Searchs">
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
                        <h2>��üŬ����</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <a href="Class.html">��üŬ����</a>
                            <span>ī�װ�</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="img/new/kids.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3><%=vo.getC_name() %></h3>
                        <div class="product__details__price"><%=vo.getC_pay() %></div>
                      
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <!-- <div class="pro-qty">
                                    <input type="text" value="1">
                                </div> -->
                            </div>
                        </div>
                       
                        <ul>
                            <li><b>���� ��</b> <span><%=vo.getC_tchnm() %></span></li>
							<li><b>���� ����</b> <span><%=vo.getC_start_dt() %></span></li>
							<li><b>���� ����</b> <span><%=vo.getC_end_dt() %></span></li>
							<li><b>���� �ð�</b> <span><%=vo.getC_time() %></span></li>
							<li style = "display : none;" ><span id ="cnum"><%=vo.getC_seq() %></span></li>
                            <li><b>SNS</b>
                                <div class="share">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                        </ul> 
                        <%if(distnum == 1 ){ %>
                         <span id = "distnictClass"> �������� ����</span>
                        <%}else{ %>
                       <button type="button" id="modal-open" style="margin-top:13px">���� ��û</button> 
                      <%} %>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">����Ұ�</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">Ŭ���� �Ұ�</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">���� <span></span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>����Ұ�</h6>
                                    <p><%=vo.getC_tchsp() %>
									</p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>���� �Ұ�</h6>
                                    <p><%=vo.getC_content() %>
									</p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                  <form id="reviewsend">
                                    <div class= "review">
                                    <textarea  name = "opinion" rows="50" cols="30" placeholder="�ı⸦ �ۼ� ���ּ���" style = "height: 100px; width: 100%; resize: none;"></textarea>
                                    </div>
                                    <div class = "reviewArea" style= "float:right">
                                    <span style="width: 125px; height: 40px;">
	                                    <select name = "star" style="width: 125px; height: 40px">
		                                    <option value="none">===��������===</option>
		                                    <option value="1">�ڡ١١١�(1��)</option>
		                                    <option value="2">�ڡڡ١١�(2��)</option>
		                                    <option value="3">�ڡڡڡ١�(3��)</option>
		                                    <option value="4">�ڡڡڡڡ�(4��)</option>
		                                    <option value="5">�ڡڡڡڡ�(5��)</option>
	                                    </select>
                                    </span>
                                    <input name = "cnum" style ="display:none" value="<%=vo.getC_seq()%>">
                                      <span style="width: 125px; height: 40px;"><button value="���� ���" name="reviewbtn" class="reviewbtn" style="width: 125px; height: 40px; background-color:white; border-radius: 15px; border:0.5px">���� ���</button></span>
                                       
                                    </div>
										</form>
											 <div style ="margin-top:50px"><hr></div>
									<div style="text-align: center;margin: auto; padding-top: 10px"><h3 style="text-decoration:underline;text-underline-position: under;">�ı� ���</h3></div>
									 <div class = "reviewLists" style="overflow-y:auto; height:400px;">
									 
									 </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Related Product Section End -->

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
    
     <!-- modal -->
    
     <div class="container" >
  <div class="popup-wrap" id="popup">
    <div class="popup">
      <div class="popup-head">
          <span class="head-title">
          	������û
           </span>
      </div>
      <div class="popup-body">
        <div class="body-content">
      
          <div class="body-contentbox">
          <p style='line-height: 80px'>
      		���Ǹ� �����Ͻðڽ��ϱ�?
          </p>
          </div>
        </div>
      </div>
      <div class="popup-foot">
        <span class="pop-btn confirm" id="confirm1">���� ����</span>
        <span class="pop-btn closed" id="closed">���</span>
      </div>
    </div>
</div>
</div>

 <!-- success modal -->
    
     <div class="container" >
  <div class="popup-wrap" id="popupsc">
    <div class="popup">
      <div class="popup-head">
          <span class="head-title">
          	��û�Ϸ�
           </span>
      </div>
      <div class="popup-body">
        <div class="body-content">
      
          <div class="body-contentbox">
          <p style='line-height: 80px'>
      		���� ���� ��û�� �����Ͽ����ϴ�!
          </p>
          </div>
        </div>
      </div>
      <div class="popup-foot" id="confirm2">Ȯ��
        
      </div>
    </div>
</div>
</div>
    
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
    <script type="text/javascript" src="js/ApplyModal.js" charset="utf-8"></script>
	<script>
	$('.reviewbtn').click(function(){
		let reviewdata = $("#reviewsend").serialize();
		alert(reviewdata);
		$.ajax({
			type: 'post',
			url:'ReviewCon',
			data:reviewdata,
			dataType:'json',
			success : function(){
				console.log("���ۼ���")
			},
			erorr: function(){
				console.log("���۽���")
			}
		});
	});
	
	$('.reviewLists').ready(function(){
		let cnum= "<%=vo.getC_seq()%>"
		$.ajax({
			type: 'post',
			url:'loadReviewCon',
			data:{
				'cnum' : cnum
			},
			dataType:'json',
			success : function(result){
				let reviews = result
				console.log(reviews[0].u_id)
				for(let i = 0; i<reviews.length;i++){
							$('.reviewLists').append(
							'<div style ="display: flex"><span style ="float: left; padding-top:8px"><strong>'+ "���̵�:"+reviews[i].u_id +'</strong></span>'
							+'<span style ="float: left; padding-left:15px"><p>'+ "����:"+"��".repeat(reviews[i].r_rating)+'</p></span></div>'
							+'<p style ="float: left">'+reviews[i].r_opinion+'<p>'
							+'<br>'
							+'<hr>'
							)
				}
			},
			erorr: function(){
				console.log("���۽���")
			}
		});
	});
	
	</script>
</body>

</html>