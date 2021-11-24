<%@page import="Model_User.UserVO"%>
<%@page import="Model_User.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>

#text {

    -moz-appearance: textfield-multiline;

    -webkit-appearance: textarea;

    border: 1px solid gray;

    font: medium -moz-fixed;

    font: -webkit-small-control;

    overflow: auto;

    padding: 2px;

    resize: both;

  }
  .board_title{
 
	 width : 390px;
	 font-size : 20px;
	 border: 1px solid gray;
 
 }
 
 #content{
 
 	border: 1px solid gray;
 
 }
 
 .writer{
 
 	visibility : hidden;
 
 }
 

 
</style>
</head>
<body>
<%
	UserDAO dao = new UserDAO();
	UserVO vo = (UserVO)session.getAttribute("user");
	String id = vo.getId();

%>

<form action="WriteBoard" method="post" enctype="multipart/form-data">

	<div class="title-wrapper">
		<input name= "id" class="writer" type="text" value=<%=id %>>
		<div class="title-wrapper">���� : </div>
		<input type = "text" name= "title" class="board_title" ></div>
    <input class= "files" name="file1" type="file">
    <input class= "files" name="file2" type="file">

<!-- 
  <div style="background-color:#CCFFFF; width:390px; padding: 10px;">

    <button id="selectAll">��ü����</button>

    <button id="bold">����</button>

    <button id="italic">�����</button>

    <button id="underLine">����</button>
 





    <br/>

    <button id="justifyLeft">��������</button>

    <button id="justifyCenter">�������</button>

    <button id="justifyRight">����������</button>
    
    

    <br/>



    <select id="fontName" width="50px">

        <option value="">�۲� ����</option>

        <option value="����">����</option>

        <option value="����">����</option>

        <option value="�ü�">�ü�</option>

        <option value="����">����</option>

        <option value="���� ���">���� ���</option>

    </select>

    <select id="fontSize" width="50px">

        <option value="">���� ũ��</option>

        <option value="1">4px</option>

        <option value="2">8px</option>

        <option value="3">10px</option>

        <option value="4">12px</option>

        <option value="5">16px</option>

        <option value="6">20px</option>

        <option value="7">30px</option>

    </select>

    <select id="foreColor" width="50px">

        <option value="">���� ����</option>

        <option value="#f00">����</option>

        <option value="#00f">�Ķ�</option>

        <option value="#0f0">�ʷ�</option>

        <option value="#ffff00">���</option>

        <option value="#000">����</option>

    </select>

    <select id="hiliteColor" width="50px">

        <option value="">���� ����</option>

        <option value="#f00">����</option>

        <option value="#00f">�Ķ�</option>

        <option value="#0f0">�ʷ�</option>

        <option value="#ffff00">���</option>

        <option value="#000">����</option>

    </select>

  </div>
  <div id="content" contenteditable="true" style="width:400px; height:400px;">
 -->
  
  <textarea name="content">�ؽ�Ʈ ������</textarea>
 <br>


<input type="submit" id="apply" value="����ϱ�">
</form>
</body>
<script src="js/jquery-3.3.1.min.js"></script>


<script>
/*
	$('button').click(function(){
	
	    document.execCommand($(this).attr('id'), false, true);
	});
	
	$('select').change(function(){
	
	    document.execCommand($(this).attr('id'), false, $(this).val());
	});
	
*/	
	
/*
	
	
	
	$('#apply').on('click',function(){
		
		
		let formData = new FormData();
		
		let data = {
				
				"id" : $('.writer').val(),
				"title" : $(".board_title").text(),
				"content" : $("#content").html()
		}
		
		
		
		let fileInput = $(".files");
		
		for (let i = 0; i < fileInput.length; i++){
			
			if(fileInput[i].files.length > 0){
				
				for(let j =0; j< fileInput[i].files.length; j++){
					
					console.log("fileInput[i].files[j] :::"+fileInput[i].files[j]);
					
					console.log(fileInput[i].files[j]);
					
					console.log($('.files')[i].files[j]);
					
					formData["file"+(i+1)] = $('.files')[i].files[j];
					
					
				}
				
			}
			
		}
		
		formData['key'] = new Blob([JSON.stringify(data)], {type: "application/json"});
		

		
		
		
		
		
		
		$.ajax({
			
	        type : 'POST',
			url : "/GCAP/WriteBoard_Temp",
			data : formData,
			contentType: false,
			processData: false,
			enctype: 'multipart/form-data',



			success : function(){
				
			},
			error : function(){
				
			}
			
			
		})
		
		
		
		
		
	})
	*/
</script>
</html>