<%@page import="Model_Board.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	BoardDAO dao = new BoardDAO();
	ArrayList<BoardVO> al = dao.showArticle();

	
%>
<h1>�Խ��� ������</h1>


	<table>
	<tr>
		<th>����</th>
		<th>����</th>
		<th>�ۼ���</th>
		<th>�ۼ�����</th>
		<th>��ȸ��</th>
	</tr>
	<%for(BoardVO vo : al){ %>

	<tr>
		<td><%=vo.getArticle_seq() %></td>
		<td><a href="HitCountBoard?num=<%=vo.getArticle_seq()%>"><%=vo.getArticle_subject() %></a></td>
		<td><%=vo.getNick() %></td>
		<td><%=vo.getReg_date() %></td>
		<td><%=vo.getCnt() %></td>
	</tr>
	<%} %>
	</table>

	<input id = "create" type="button" value="�ۼ��ϱ�">

	
	<script src="js/jquery-3.3.1.min.js"></script>
	<script>
	document.getElementById("create").onclick = function(){
		
		window.location.href = "writeBoard.jsp"
	}
	
	</script>
	<script>


		

	
	
	</script>






</body>
</html>