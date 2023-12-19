<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-12-19
  Time: 오후 2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form Tag</title>
</head>
<body>
    <h3>회원정보</h3>
    <p>아이디 : ${member.id}
    <p>비밀번호 : ${member.password}
    <p>거주지 : ${member.city}
    <p>성별 : ${member.sex}
    <p>취미 : <c:forEach items="${member.hobby}" var="hobby">
        [<c:out value="${hobby}"/>]
    </c:forEach>

</body>
</html>
