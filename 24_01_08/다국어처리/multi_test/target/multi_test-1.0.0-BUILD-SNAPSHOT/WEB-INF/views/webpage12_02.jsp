<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Internationalization</title>
</head>
<body>
    <h2>다국어 처리</h2>
    <p><a href="?language=ko">Korean</a>|<a href="?language=en">English</a></p>
    <p><spring:message code="Person.form.Enter.message"/></p>
</body>
</html>
