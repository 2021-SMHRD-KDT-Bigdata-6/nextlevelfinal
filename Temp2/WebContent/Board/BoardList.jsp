<%@page import="Model_Board.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model_Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<!-- Css Styles -->
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../css/nice-select.css" type="text/css">
<link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="../css/style.css" type="text/css">
<style>
    li{
        background-color: white;
        text-align: center;
        color: rgb(53, 159, 246);
    }
    .text-center{
        position: absolute;
        width: 170px;
        right: 50%;
    }
    btn{
        text-align: right;
    }
    .NumBtn{
    	width: 50px;
    	height: 34px;
    	border: solid 1px black;
    }
    .boardList{
    	padding-top: 60px;
    	
    }
    .boxsize{
		padding-bottom: 180px;
		
	}
	.breadcrumb__text{
		width: 180px;
	}
	.breadcrumb-section {
    display: flex;
    align-items: center;
    padding: 40px 0 130px;
}
	
</style>
<body>
	<%
	BoardDAO dao = new BoardDAO();
	ArrayList<BoardVO> al = dao.showArticle();

%>

<div>
        <jsp:include page="../header.jsp" flush="true"></jsp:include>
    </div>
    <!-- Hero Section End -->
       <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="../img/new/realreal.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>커뮤니티</h2>
                        <div class="breadcrumb__option">
                            <a href="../index.jsp">Home</a>
                            <span>자유게시판</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   <!--  <section class="breadcrumb-section set-bg boxsize" data-setbg="../img/breadcrumb.jpg" style="height: 34px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>커뮤니티</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            	<span>자유게시판</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!-- Breadcrumb Section End -->
    
    
    <div class="container boardList">
        <table class="table table-hover">
            <thead>
                <tr>
                    <td>번호</td>
                    <td>제목</td>
                    <td>작성자</td>
                    <td>날짜</td>
                    <td>조회수</td>
                </tr>
            </thead>
            <tbody>
 	<%for(BoardVO vo : al){ %>

	<tr>
		<td><%=vo.getArticle_seq() %></td>
		<td><a href="../HitCountBoard?num=<%=vo.getArticle_seq()%>"><%=vo.getArticle_subject() %></a></td>
		<td><%=vo.getNick() %></td>
		<td><%=vo.getReg_date() %></td>
		<td><%=vo.getCnt() %></td>
	</tr>
	<%} %>
            </tbody>
        </table>
        <hr/>
        
        <div class="blog__sidebar__search" style="margin: 0px; align-items: center;display: flex;">
                            <form action="#" style="width: 70%">
                                <input type="text" placeholder="Search...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
        						<a href="../boardWrite.jsp" class="btn btn-default pull-right" style="margin-left: 299px">글쓰기</a>
                        </div>

        
        
        <!--<div class="text-center">
              <ul class="pagination">
                <li class="NumBtn" type="button" href="BoardList.jsp">1</li>
                <li class="NumBtn" type="button" href="#">2</li>
                <li class="NumBtn" type="button" href="#">3</li>
                <li class="NumBtn" type="button" href="#">4</li>
                <li class="NumBtn" type="button" href="#">5</li>
            </ul>
            
        </div>-->




    </div>




    	<!-- Js Plugins -->
	<script src="../js/jquery-3.3.1.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.nice-select.min.js"></script>
	<script src="../js/jquery-ui.min.js"></script>
	<script src="../js/jquery.slicknav.js"></script>
	<script src="../js/mixitup.min.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/main.js"></script>
</body>
</html>

</body>
</html>