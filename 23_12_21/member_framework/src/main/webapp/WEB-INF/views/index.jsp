<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>index</title>
</head>
<body>
	<h2>
		Hello Spring FrameWork 회원 프로젝트!
	</h2>
	<a href="${pageContext.request.contextPath}/member/save">회원 가입</a>
	<a href="${pageContext.request.contextPath}/member/login">로그인</a>
	<a href="${pageContext.request.contextPath}/member/">회원 목록 조회</a>
</body>
</html>
