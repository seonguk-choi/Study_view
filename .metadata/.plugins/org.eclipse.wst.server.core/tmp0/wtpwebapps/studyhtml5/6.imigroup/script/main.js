// javascript ver. <--- vanilla JS (순수 자바스크립트, Pure Javascript)
	// 버거메뉴 클릭하면 .vp-wrap를 display: block 하는 명령
	const INDEX = document.querySelector("#navBTN");
	const VPBG = document.querySelector(".vp-bg");
	const EXIT = document.querySelector("#exitBTN");
	
	INDEX.addEventListener("click", function(){
		VPBG.style.display="block";
	});
	EXIT.addEventListener("click", function(){
		VPBG.style.display="none";
	});
	
	// jquery ver : jQuery CDN 먼저 호출! 그리고 나서~
	/* var MOBILE = $("#m_open");
	var VPWRAP = $(".vp-wrap");
	MOBILE.click(function(){
		VPWRAP.css("display", "block");
	}) */
