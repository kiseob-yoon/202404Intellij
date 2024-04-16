<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <title>커스텀</title>
</head>
<body>
<p>커스텀 태그 연습</p>
<form:form modelAttribute="formCommand">
    <p>
        <label for="loginType">로그인 타입(form:select)</label>
        <form:select path="loginType" items="${loginTypes}"></form:select>
    </p>
    <input type="submit" value="등록">
</form:form>
</body>
</html>
