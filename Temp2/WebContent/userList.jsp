<%@page import="Model_User.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model_User.UserDAO"%>
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
	UserDAO dao = new UserDAO();
	ArrayList<UserVO> al = dao.selectAll();
	
%>
<h1>����������</h1>

	<form action = "#" method ="post">
	<table>
	<tr>
		<th>���̵�</th>
		<th>�̸�</th>
		<th>�г���</th>
		<th>��ȭ��ȣ</th>
		<th>email</th>
		<th>�ּ�</th>
		<th>��������</th>
		<th>����Ʈ</th>
		<th>ȸ������</th>
	</tr>
	<%for(UserVO vo : al){ %>
	<%String totalAddr = "("+vo.getPostcd()+")"+vo.getAddr()+" "+vo.getAddrdtl1()+vo.getAddrdtl2(); %>
	<tr>
		<td><%=vo.getId() %></td>
		<td><%=vo.getName() %></td>
		<td><%=vo.getNick() %></td>
		<td><%=vo.getPhone() %></td>
		<td><%=vo.getEmail() %></td>
		<td><%=totalAddr %></td>
		<td><%=vo.getJoinDt() %></td>
		<td><%=vo.getPoint() %></td>
		<%if(vo.getStatus().equals("Y")){ %>
		<td>
        <select name="status" class="status" id =<%=vo.getId() %>>
        <option value="Y" selected>Ȱ��</option>
        <option value="N">��Ȱ��</option>
        <option value="S">����</option>
        </select>
        </td>
        <%}else if(vo.getStatus().equals("N")){ %>
        <td>
        <select name="status" class="status" id =<%=vo.getId() %>>
        <option value="Y">Ȱ��</option>
        <option value="N" selected>��Ȱ��</option>
        <option value="S">����</option>
        </select>
        </td>
        <%}else { %>
        <td>
        <select name="status" class="status" id =<%=vo.getId() %>>
        <option value="Y">Ȱ��</option>
        <option value="N">��Ȱ��</option>
        <option value="S" selected>����</option>
        </select>
        </td>
        <%} %>
	</tr>
	<%} %>
	</table>
	<input id = "statusSubmit" type="button" value="�����ϱ�">
	</form>
	
	<script src="/GCAP/ogani-master/js/jquery-3.3.1.min.js"></script>
	<script>
			
		
		$('#statusSubmit').on('click',function(){
	
		let status = $('.status')
		let statusList = new Array()
		
		for(let i = 0; i < status.length; i++){
			
			let data = new Object()
			data.id = $(status[i]).attr('id')
			data.status = $(status[i]).val()
			statusList.push(data)
		
		}
		
		console.log(statusList)
		
		let statusJson = JSON.stringify(statusList)
		
		console.log(statusJson)
		
		
		$.ajax({
		
			url : "AdminUpdate",
			data : {data : statusJson},
			success : function(){
				window.location.href = "index.jsp";
			},
			error : function(){
				console.log("���������� ����")
			}
			
		})
		})
		
		
		
	
	
	
	
	</script>


</body>
</html>