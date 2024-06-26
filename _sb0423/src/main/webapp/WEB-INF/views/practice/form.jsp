<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Validation 연습 폼</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<h2>Validation 연습 폼</h2>
<form:form modelAttribute="inputRequest">
    <p>
        <label>이름:
    <form:input path="name"/>
    <form:errors path="name"/>
        </label>
    </p>
    <p>
        <label>나이:
            <form:input path="age"/>
            <form:errors path="age"/>
        </label>
    </p>
    <p>
        <label>스마트폰:
            <form:input path="phone"/>
            <form:errors path="phone"/>
        </label>
    </p>
    <p>
        <label>이메일:
            <form:input path="email"/>
            <form:errors path="email"/>
        </label>
    </p>
    <p>
        <label>주소:
            <form:input path="addr"/>
            <form:errors path="addr"/>
        </label>
    </p>

    <input type="submit"/>
</form:form>


</body>
</html>