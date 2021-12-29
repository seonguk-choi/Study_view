/**
 * 여러줄 주석
 */
//한줄 주석

//자바스크립트 문법
//window.onload=function(){
//	alert("test");
//}

/* 1. 자바스크립트 자료형
    숫자형, 문자형, NULL, function, object, symbol, class
    - 자동 캐스팅 -> 자바 큰 차이!!
    
   2. 변수 선언 초기화(p.463)
   var		  : es5 <--> javascript, jquery
    ~ 과도기 : es5 -> es6
   const(변수를 생성하면 바꿀수 없음, immutable), let : es6 <--> javascript, react / vue / angular (framework)
   						                            + node.js > npm 프로젝트 | babel, webpack
   var var1 = 5;
   var str1 = "aaa";
   var class1 = {classNo : '101', className : 'HTML, CSS & Javascript'};
   
   
 */

//$(document).ready(function(){
	//일반형
	//html, css 모두 로드된 후 스크립트를 실행해!
	
//});
//$(function(){
	//축약형 : 추천하는 방법!
//	alert("test!");
//}


//p.468 Jquery를 이용한 태크 제어
//주요 기능 3가지
//alert();
//console.log();
//document.write();

/* 제이쿼리 기본 사용법 */
/*$(selector) selector : 선택자(tag, class, id)
.action()
.action()
.action();*/


$(function(){//$ 명령 : 찾아라
//1. html DOM 조작하는 메소드
	$(".btn1").click(function(){
		//.html() : set
		$("#displayArea").html("<img src=\" https://picsum.photos/200/300\" alt=\"사진\">");
		
		//.html() : get
		console.log($("#displayArea").html());
	});
	
//2. hide, show 애니매이션 메소드
	$(".btn2").click(function(){
		$("#displayArea").hide(1000,function(){
			alert("애니매이션 끝!");
		}); //element 를 숨김
	});
	$(".btn3").click(function(){
		$("#displayArea").show("slow"); //element(태그요소의 범위) 를 보여줘
		
	});	
	
})



