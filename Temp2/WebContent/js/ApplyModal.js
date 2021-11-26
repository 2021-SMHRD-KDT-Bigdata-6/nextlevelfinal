$(function(){
	let C_seq = $("#cnum").text();
		console.log(C_seq);
		  $("#confirm1").click(function(){
			  modalClose(); //모달 닫기 함수 호출
			  $.ajax({
				  url:'ApplyCon',
			  	  data:{classnum:C_seq},
				  contentType:'utf-8',
			  	  success:function(){
			  		$("#popupsc").css('display','flex').hide().fadeIn(0.01);
					$('#modal-open').css('backgroundColor','gray').css('padding-top','0px').css('cursor','default').html('수강중인 강의')
			console.log("성공")
			  	  },
			  	  error:function(){
			  		  console.log('실패');
			  	  }
			  	});
			  
			  
		      //컨펌 이벤트 처리
		  });
	  
	  $("#confirm2").click(function(){
		  modalClose2(); //모달 닫기 함수 호출
	  });
	  
	  $("#confirm1").mouseover(function(){
		  $("#confirm1").css({
			  background:'#F4A460'
		  })
	  });
	  
	  $("#confirm1").mouseout(function(){
		  $("#confirm1").css({
			  background:'#FF7F50'
		  })
	  });
	  
	    $("#closed").mouseover(function(){
		  $("#closed").css({
			  background:'#F4A460'
		  })
	  });
	    
	  $("#closed").mouseout(function(){
		  $("#closed").css({
			  background:'#FF7F50'
		  })
	  });
	  
	  $("#modal-open").click(function(){        
	      $("#popup").css('display','flex').hide().fadeIn();
	      //팝업을 flex속성으로 바꿔준 후 hide()로 숨기고 다시 fadeIn()으로 효과
	  });
	  
	  $("#closed").click(function(){
	      modalClose(); //모달 닫기 함수 호출
	  });
	  
	  function modalClose(){
	      $("#popup").fadeOut(); //페이드아웃 효과
	  }
	  function modalClose2(){
	      $("#popupsc").fadeOut(); //페이드아웃 효과
	  }
	});