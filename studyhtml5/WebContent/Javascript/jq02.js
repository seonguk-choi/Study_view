//p.475
$(function(){
	//$() : ()안의 요소(태그/클래스/아이디...등) 을 [모두] 찾아라!
	//버튼 #b1, #b2, #b3, #b4 클릭할 때마다 명령을 수행
	//아디가 b1인 버튼을 클릭하면, 할일을 수행해
	$("#b1").click(function(){// #b1을 클릭하면 { } 을 수행해
		$("#pic1").hide("slow", function(){
			alert("pic1을 숨겼습니다");
		});
	});
		
	$("#b2").click(function(){
		$(".c1").hide();
	});
	
	$("#b3").click(function(){
		$("li").hide();
	});
	
	$("#b4").click(function(){
		$("li").show();
	});
	
	setTimeout(function(){
		$("#b1").click();
	},3000);
	
})