<%@ page import="com.hanul.study.MemberDTO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.hanul.study.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="dao" class="com.hanul.study.MemberDAO"/> --%>
<%
MemberDAO dao = new MemberDAO();
ArrayList<MemberDTO> list = dao.searchAllMember();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP06</title>
<script type="text/javascript">
	function fnDelete(id) {
		//alert("id : " + id);
		if (confirm("정말 삭제하시겠습니까?")) {
			location.href = "jsp07.jsp?id=" + id;
		}
	}
</script>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	background:
		url("https://images.unsplash.com/photo-1542931287-023b922fa89b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
		no-repeat center/cover;
}

#wrap .listView {
	width: 1200px;
	/* 	height: 850px; */
	display: flex;
	justify-content: space-between;
	background: white;
	position: absolute;
	left: 50%;
	top: 50%;
}

.main {
	width: 100%; order : 2;
	padding: 0 3rem;
	box-sizing: border-box;
	box-shadow: 0 0 15px 0 #333;
	order: 2;
}

.main>h3 {
	text-align: center;
	font-size: 2rem;
	padding: 1.250rem 0;
}
.row {
	background: #e5e5e5;
	height: 60px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	border-top: 1px solid #b0b0b0;
	border-bottom: 1px solid #b0b0b0;
	padding: 0 1rem;
}
.row-col {
	background: none;
	border-top: 0;
}
</style>
</head>
<body>
	<div id="wrap">
		<div class="main">
			<h3>전체회원 목록보기</h3>
			<div class="list-wrap">
				<div class="row">
					<div>이름</div>
					<div>아이디</div>
					<div>비밀번호</div>
					<div>나이</div>
					<div>주소</div>
					<div>전화번호</div>
					<div>관리</div>
				</div>
				<%if(list.size() == 0){ %>
				<div class="row row-col">
					<div>등록된 회원목록이 없습니다!</div>
				</div>
				<%}else{ %>
				<%for(MemberDTO dto : list){ %>
				<div class="row row-col">
					<div><%= dto.getName() %></div>
					<div><%= dto.getId() %></div>
					<div><%= dto.getPw() %></div>
					<div><%= dto.getAge() %></div>
					<div><%= dto.getAddr() %></div>
					<div><%= dto.getTel() %></div>
					<%-- <div><a href="jsp07.jsp?id=<%=dto.getId()%>">삭제</a></div> --%>
					<%-- <div><button onclick="location.href='jsp07.jsp?id=<%=dto.getId()%>'">삭제</button></div> --%>
					<div>
						<input type="button" value="삭제"
							onclick="fnDelete('<%=dto.getId()%>')" />
					</div>
					<div>
						<input type="button" value="수정"
							onclick="location.href='jsp08.jsp?id=<%=dto.getId()%>'">
					</div>
				</div>
				<%}//for %>
				<%}//if %>

				<div>
					<div class="row row-col">
						<input type="button" value="회원가입"
							onclick="location.href='jsp05Main.html'" />
					</div>
				</div>
			</div>
			<!-- /.list-wrap -->
		</div>
		<!-- /.main -->
	</div>
	<!-- #wrap -->
</body>
</html>
