<%@page import="Model_User.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">



<!-- jQuery -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>



<!-- Bootstrap CSS -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<!-- common CSS -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/common/css/common.css">




<title>board</title>



<script>

	$(document).on('click', '#btnSave', function(e){

		e.preventDefault();

		

		$("#form").submit();

	});

	

	$(document).on('click', '#btnList', function(e){

		e.preventDefault();

		

		location.href="${pageContext.request.contextPath}/board/getBoardList";

	});

</script>

<style>

body {

  padding-top: 70px;

  padding-bottom: 30px;

}



</style>

</head>

<body>
<%
	UserDAO dao = new UserDAO();
	UserVO vo = (UserVO)session.getAttribute("user");
	String id = vo.getId();

%>

	<article>

		<div class="container" role="main">

			<h2>�� �ۼ��ϱ�</h2>

			<form action="WriteBoard" method="post" enctype="multipart/form-data">
				<div class="mb-3">

					<label for="title">����</label>

					<input type="text" class="form-control" name="title" id="title" placeholder="������ �Է��� �ּ���">

				</div>
				<div class="mb-3">
				    <input filename="file1" type="file">
   					<input name="file2" type="file">
				</div>

				<div class="mb-3">

					<label for="content">����</label>

					<textarea class="form-control" rows="5" name="content" id="content" placeholder="������ �Է��� �ּ���" ></textarea>

				</div>


			

			</form>

			<div >

				<button type="button" class="btn btn-sm btn-primary" id="btnSave">����</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnList">���</button>
				
				<button type="button" class="btn btn-sm btn-primary" id="btnList">����</button>

			</div>

		</div>

	</article>
	<script src="js/jquery-3.3.1.min.js"></script>
	
	<script>
	



	
	</script>

</body>

</html>

