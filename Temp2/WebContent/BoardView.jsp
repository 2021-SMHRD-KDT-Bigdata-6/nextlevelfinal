<%@page import="Model_Comment.CommentVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model_Comment.CommentDAO"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="Model_User.UserDAO"%>
<%@page import="Model_User.UserVO"%>
<%@page import="Model_Board.BoardVO"%>
<%@page import="Model_Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 읽기</title>
<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<script>

	$(document).on('click', '#btnList', function(){

		location.href = "${pageContext.request.contextPath}/board/getBoardList";

	});

</script>
<style>
body {

	padding-bottom: 200px;

}

.board_title {

	font-weight : 700;

	font-size : 22pt;

	margin : 10pt;

}

.board_info_box {

	color : #6B6B6B;

	margin : 10pt;

}

.board_author {

	font-size : 10pt;

	margin-right : 10pt;

}

.board_date {

	font-size : 10pt;
}

.btn{
	background-color: #FF7F50;
	color: #fff;
}


.board_tag {

	font-size : 11pt;
	height: 340px;
	margin : 10pt;

	padding-bottom : 10pt;
}
.header{
	    padding-bottom: 0px;
}
span{
	margin-top: 10px;
}
p{
	margin-bottom: 10px;
}
.btn-primary{
	border-color: #FF7F50;
}

</style>
</head>
<body>

<% 
	String num = request.getParameter("num");
	int seq_num = Integer.parseInt(num);
	BoardDAO dao = new BoardDAO();
	BoardVO vo = dao.showOneArticle(seq_num);
	UserDAO dao2 = new UserDAO();
	
	UserVO vo2 = (UserVO)session.getAttribute("user");
	String currentUser = vo2.getId();
	String writer = vo.getU_id();
	UserVO vo3 = dao2.selectOne(currentUser);
	String commentWriter = vo3.getNick();
	
	UserDAO daoUser = new UserDAO();
	String currentNick = daoUser.selectOne(currentUser).getNick();
	
	String file1 = vo.getFile1();
	String file1Name = null;
	if(file1 != null){
		file1Name = URLDecoder.decode(file1, "euc-kr");
	}else{
		file1Name = "파일없음";
	}
	
	CommentDAO daoComment = new CommentDAO();
	ArrayList<CommentVO> al = daoComment.showComment(seq_num);
	
	
	
	
%>


<!-- 헤더 -->
	<div>
        <jsp:include page="header.jsp" flush="true"></jsp:include>
    </div>
	<!-- 헤더 끝 -->
	
	
	<!-- 중간 배너 -->
	 <section class="breadcrumb-section set-bg" data-setbg="img/new/realreal.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>커뮤니티</h2>
                        <div class="breadcrumb__option">
                            <span href="Board/BoardList.jsp">자유게시판</span>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 중간 배너 끝 -->
    
    
    <!-- 제목 내용 부분 -->
	<article>
		<div class="container" role="main">
			<div class="bg-white rounded shadow-sm" style="padding-bottom: 10px;">
				<div class="board_title" style="margin-top: 50px;"><%=vo.getArticle_subject() %>
				
					<!-- 아이디 날짜 삭제할 때  -->
					<!-- 
				<div class="board_info_box" style="float: right;">
					<span class="board_author">아이디</span><span class="board_date">2021-11-25</span>
				</div> -->
				<!-- 여기까지 통으로 날리기 -->
				
				
				</div>
				<hr>
				<!-- 아이디 날짜 삭제할 때  -->
				<div class="board_info_box">
					<span class="board_author"><%=vo.getNick() %></span><span class="board_date"><%=vo.getReg_date() %></span>
				</div>
				<!--  여기까지 통으로 날리기 -->
				
				
			<div class="board_tag"><%=vo.getArticle_content() %></div>
			<%if(file1 != null){ %>
			<a href="fileUpload/<%=vo.getFile1()%>" download><button type="button" class="btn btn-sm btn-primary" style="margin-left: 5px;">첨부파일 다운로드</button></a> <span>  <%=file1Name %></span>
			<%}else{ %>
			<button type="button" class="btn btn-sm btn-primary" style="margin-left: 5px;">첨부파일 다운로드</button> <span>  <%=file1Name %></span>
			
			<%} %>
			<div style=" float: right; padding-right: 5px;">
				<a href="Board/BoardList.jsp"><button type="button" class="btn btn-sm btn-primary" >목록</button></a>
				<%if(currentUser.equals(writer) || currentUser.equals("admin")){ %>
				<a href="boardUpdate.jsp?num=<%=vo.getArticle_seq() %>"><button type="button" id="update" class="btn btn-sm btn-primary">수정</button></a>
				<a href="DeleteBoard?num=<%=vo.getArticle_seq() %>"><button type="button" id="delete" class="btn btn-sm btn-primary">삭제</button></a>
				<%} %>
				
	
				
			</div>
			</div>
		</div>
		
		
		
	<!-- 댓글 등록 부분 -->
	<%if(vo2 != null){  %>
		<div class="container">
		<input style="display:none;" id="comment_id" value="<%=currentUser%>">
        <input style="display:none;" type="hidden" id="article_seq" value="<%=vo.getArticle_seq()%>">
		<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
				<div style="padding-bottom:8px;">
					<h6 class="pb-2 mb-0 border-bottom"><%=currentNick%></h6>
				</div>
				<div class="row">
				<div class="col-sm-10" style="padding-top:10px">
					<input type="text" path="content" id="comment_content" class="form-control" rows="3" placeholder="댓글을 입력해 주세요"></input>
				</div>
				<div class="col-sm-2">
					<input type="button" class="btn btn-sm btn-primary" id="comment_submit" style="width: 100%; margin-top: 10px" value="등록"> 
				</div>
				</div>	
		</div>
		</div>
		<%} %> 
	<!-- 댓글 등록 부분 끝 -->
			
			
			
	<!-- 댓글 한마디-->
		
	<div class="container" style="overflow:auto; height:400px;">
	<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
		<h6 class="border-bottom pb-2 mb-0">댓글</h6>
		
		<%for(CommentVO voComment : al){ %>	
		<%
			String idWhoWrote = voComment.getU_id();
			String nickWhoWrote = daoUser.selectOne(idWhoWrote).getNick();
		%>	
		<div class="media text-muted">
      	<p class="media-body small lh-125 border-bottom horder-gray" style="padding-bottom: 8px;">
          <span class="d-block">
          <span id="comment_seq" style="display:none;"><%=voComment.getComm_seq() %></span>
          <span id="commentWriter_id" style="display:none;"><%=voComment.getU_id() %></span>
          <strong id="commentWriter_nick" class="text-gray-dark"><%=nickWhoWrote %></strong>
          <span id="comment_date" class="board_date board_info_box"><%=voComment.getReg_date() %></span>
          <br>
          <span id="comment_content" class =<%=voComment.getComm_seq() %>><%=voComment.getComm_content() %></span>
          <span style="font-size: 9pt; padding-left: 10px;">
          <%if(voComment.getU_id().equals(currentUser) || voComment.getU_id().equals("admin")){%>
          <span class="button"><button onclick = "updateComment()" class="<%=voComment.getComm_seq() %>" style="border-color: #FF7F50; 	background-color: #FF7F50; color: #fff; border-radius: 8px; border: 10px;">수정</button></span>
          <span class="button"><button onclick = "deleteComment()" class="<%=voComment.getComm_seq() %>" style="border-color: #FF7F50; 	background-color: #FF7F50; color: #fff; border-radius: 8px; border: 10px;">삭제</button></span>
          <button id =<%=voComment.getComm_seq()%> class="confirm btn btn-sm btn-primary" style ="display : none; border-color: #FF7F50; 	background-color: #FF7F50; color: #fff; border-radius: 8px; border: 10px;" onclick = "confirmUpdate()">확인</button>
          <%} %>
      </span>
      </span>
      </p>
      </div>
      <%} %>
   	<!-- 댓글 한마디 끝-->
     
     
     
       
    <!--
    <div class="media text-muted">
    
       <p class="media-body small lh-125 border-bottom horder-gray" style="padding-bottom: 8px;">
        <span class="d-block">
        <strong class="text-gray-dark">아이디</strong>
         <span class="board_date board_info_box">2021-11-25</span>
            <br>
            <span>내용내용내용나나나나나나나나나나나나ㅇㅇ나</span>
            <span style="font-size: 9pt; padding-left: 10px;">
            <a href="#">수정</a>
            <a href="#">삭제</a>
            <a href="#">관리</a>
        </span>
        </span>
        </p>
    </div>

    
    

    <div class="media text-muted">
    
        <p class="media-body small lh-125 border-bottom horder-gray" style="padding-bottom: 8px;">
                <span class="d-block">
            <strong class="text-gray-dark">아이디</strong>
            <span class="board_date board_info_box">2021-11-25</span>
            <br>
            <span>내용내용내용나나나나나나나나나나나나ㅇㅇ나</span>
            <span style="font-size: 9pt; padding-left: 10px;">
            <a href="#">수정</a>
            <a href="#">삭제</a>
            <a href="#">관리</a>
        </span>
        </span>
        </p>
    </div>

    
    

    <div class="media text-muted">
    
        <p class="media-body small lh-125 border-bottom horder-gray" style="padding-bottom: 8px;">
                <span class="d-block">
            <strong class="text-gray-dark">아이디</strong>
            <span class="board_date board_info_box">2021-11-25</span>
            <br>
            <span>내용내용내용나나나나나나나나나나나나ㅇㅇ나</span>
            <span style="font-size: 9pt; padding-left: 10px;">
            <a href="#">수정</a>
            <a href="#">삭제</a>
            <a href="#">관리</a>
        </span>
        </span>
        </p>
    </div>

    
  
    <div class="media text-muted">
    
        <p class="media-body small lh-125 border-bottom horder-gray" style="padding-bottom: 8px;">
                <span class="d-block">
            <strong class="text-gray-dark">아이디</strong>
            <span class="board_date board_info_box">2021-11-25</span>
            <br>
            <span>내용내용내용나나나나나나나나나나나나ㅇㅇ나</span>
            <span style="font-size: 9pt; padding-left: 10px;">
            <a href="#">수정</a>
            <a href="#">삭제</a>
            <a href="#">관리</a>
        </span>
        </span>
        </p>
    </div>
    -->
    
    
    		<!-- 자동 스크롤 -->
			<div style="text-align: center;margin: auto; padding-top: 10px"></div>
			
			<!--  자동 스크롤 끝 -->
    </div>
	</div>
	</article>












	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<script>
	
	function deleteComment(){


		
		let num = event.target.className
	
	
		
		$.ajax({
			
			url : "DeleteComment",
			data : { comm_seq : num },
			success : function(){
				alert("댓글삭제 완료")
				location.reload();
			},
			error : function(){
				alert("댓글삭제 실패")
				
			}
			
			
			
		})
	

		
	}
	
	function updateComment(){
		
		let num = event.target.className
		
		
		let contents = $('span.'+num).text()

		
		$('span.'+num).contents().unwrap().wrap( '<input id = "updatedContent" type="text" value="'+contents+'">');
		


		$('span.button').attr('style', "display:none;");
		
		
		$('button#'+num).attr('style', "display:;");

	}
		
	function confirmUpdate(){
		
		let num = event.target.id
		
		let updatedContent = $('input#updatedContent').val()
		
		$('input.updatedContent').contents().unwrap().wrap( '<td class = '+num+'>'+updatedContent+'</td>');
		
		$('td.button').attr('style', "display:;");
		
		$('button#'+num).attr('style', "display:none;");
		
		$.ajax({
			
			type : "post",
			url : "UpdateComment",
			data : { comm_seq : num, comm_content : updatedContent },
			success : function(){
				alert("댓글수정 완료")
				location.reload();
			},
			error : function(){
				alert("댓글수정 실패")
				
			}
				
		})
		
	}		
	
	</script>
	<script>
	$('#comment_submit').on('click', function(){
		console.log("testtest");
		let article_num = $('#article_seq').val();
		let comm_content = $('#comment_content').val();
		let comm_id = $('#comment_id').val();
		

		if(comm_content == ""){
			alert("내용을 입력하세요.");
		}
		
		let obj = new Object();
		obj.num = article_num;
		obj.content = comm_content;
		obj.id = comm_id;
		/* {
				num : article_num,
				content : comm_content,
				id : comm_id
		} */
		
		$.ajax({
			type : "post",
			url : 'WriteComment',
			//contentType : "utf-8",
			data : {
				jsonData : JSON.stringify(obj)	
			},
			success : function(){
				alert("작성완료");
			},
			error : function(){

			}
			
			
		});
		
		
		location.reload();
		
	
		
	})
	
	
	</script>

</body>

</html>

