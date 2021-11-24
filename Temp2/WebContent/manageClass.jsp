<%@page import="Model_Class.*"%>
<%@page import="Model_User.UserVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model_User.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>

	.chkbox{

		visibility : hidden;


	}
	
	#allChk{

		visibility : hidden;


	}


</style>
</head>
<body>
<%
	ClassDAO dao = new ClassDAO();
	ArrayList<ClassVO> al = dao.selectAll();
	
%>
<h1>���ǰ��� ������</h1>


	<input id="modify" type="button" value="����"><input id="cancel" type="button" value="���">
	<table>
	<tr>
		<th><input type="checkbox" id="allChk"></th>
		<th>���� ����</th>
		<th>������� ����</th>
		<th>���� �̸�</th>
		<th>���� ī�װ�1</th>
		<th>���� ī�װ�2</th>
		<th>���� ī�װ�3</th>
		<th>���� ���</th>
		<th>���� �ð�</th>
		<th>���� ���� ��¥</th>
		<th>���� ���� ��¥</th>
		<th>���� �ο�</th>
		<th>������</th>
		<th>����</th>
	</tr>
	<%for(ClassVO vo : al){ %>
	
	<tr>
		<td><input type="checkbox" class="chkbox" id=<%=vo.getC_seq() %>></td>
		<td><%=vo.getC_seq() %></td>
		<td><%=vo.getEdu_seq() %></td>
		<td><%=vo.getC_name() %></td>
		<td><%=vo.getC_category1() %></td>
		<td><%=vo.getC_category2() %></td>
		<td><%=vo.getC_category3() %></td>
		<td><%=vo.getC_location() %></td>
		<td><%=vo.getC_time() %></td>
		<td><%=vo.getC_start_dt() %></td>
		<td><%=vo.getC_end_dt() %></td>
		<td><%=vo.getC_count() %></td>
		<td><%=vo.getC_pay() %></td>
	</tr>
	<%} %>
	</table>
	<input id = "statusSubmit" type="button" value="�Ϸ�">

	
	<script src="js/jquery-3.3.1.min.js"></script>
	<script>
	
	
	
		$("#modify").on('click',function(){
			$('.chkbox, #allChk').css('visibility','visible');
			
			
		})
		
		$("#cancel").on('click',function(){
			$('.chkbox, #allChk').css('visibility','hidden');
			
			
		})
		
		$("#allChk").on('click',function(){
		    if($('#allChk').is(':checked')){
		    	
		       $('.chkbox').prop('checked',true);
		       
		    }else{
		    	
		       $('.chkbox').prop('checked',false);
		       
		    }
		})
		
		$("#statusSubmit").on('click', function(){
			
			let arr = $(".chkbox")
			let nums = new Array()
			

			for(let i = 0; i < arr.length; i++){
				
				if($(arr[i]).prop("checked")){
					nums.push($(arr[i]).attr("id"))
					
				}
			}
			
			let obj = {"num" : nums}
			
			$.ajax({
				
				url : "AdminClassUpdate",
				data : obj,
				success : function(){
					alert("���� ����")
					
				},
				error : function(){
					alert("���� ����")
				}
				
				
				
			})
			
			
		})
		
		

		
		
	
	
	
	
	
	</script>
	


</body>
</html>