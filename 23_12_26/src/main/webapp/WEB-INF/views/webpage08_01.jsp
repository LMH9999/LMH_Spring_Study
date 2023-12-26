<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Security</title>
</head>
<body>
<h3>스프링 시큐리티 예제</h3>
<ul>
<%--    <li>웹 요청 URL : <a href="<c:url value='/home/main' />">/home/main </a></li>--%>
    <li>웹 요청 URL : <a href="${pageContext.request.contextPath}/home/main">/home/main </a></li>
<%--    <li>웹 요청 URL : <a href="<c:url value='/member/main' />">/member/main</a></li>--%>
    <li>웹 요청 URL : <a href="${pageContext.request.contextPath}/member/main">/member/main</a></li>
<%--    <li>웹 요청 URL : <a href="<c:url value='/employee/main' />">/employee/main</a></li>--%>
    <li>웹 요청 URL : <a href="${pageContext.request.contextPath}/employee/main">/employee/main</a></li>
<%--    <li>웹 요청 URL : <a href="<c:url value='/admin/main' />">/admin/main</a></li>--%>
    <li>웹 요청 URL : <a href="${pageContext.request.contextPath}/admin/main">/admin/main</a></li>
</ul>
</body>
</html>