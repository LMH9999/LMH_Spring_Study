<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>list</title>
</head>
<body>
<table border="1">
    <tr>
        <th width="25px" align="center">id</th>
        <th width="200px" align="center">email</th>
        <th width="37px" align="center">조회</th>
        <th width="43px" align="center">삭제</th>
    </tr>
    <c:forEach items="${memberList}" var="member">
        <tr>
            <td>${member.id}</td>
            <td>
                <a href="/member?id=${member.id}">${member.memberEmail}</a>
            </td>
            <td>
                <a href="/member?id=${member.id}">조회</a>
            </td>
            <td>
                <button onclick="deleteMember('${member.id}')">삭제</button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
<script>
    const deleteMember = (id) => {
        console.log(id);
        location.href = "/member/delete?id="+id;
    }
</script>
</html>