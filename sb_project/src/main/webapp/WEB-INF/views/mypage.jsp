<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta charset="UTF-8">
    <title>마이페이지</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            padding: 20px;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .header {
            background-color: #f1f1f1;
            width: 100%;
            padding: 10px;
            text-align: right;
        }
        .header span {
            float: left;
        }
        .header a {
            text-decoration: none;
            color: black;
            padding: 8px;
            background-color: #ddd;
            border: none;
            cursor: pointer;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            width: 300px; /* 폼의 폭을 고정하여 버튼들이 세로로 정렬되게 함 */
        }
        .button {
            display: block; /* 각 링크를 독립된 블록으로 만들어 줄바꿈 */
            padding: 10px 20px;
            margin: 5px 0 5px 0; /* 상하, 좌우 간격 조정 */
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            text-align: center;
            width: 100%;
        }

        .button:hover {
            background-color: #0056b3;
        }

    </style>

</head>
<body>

<h1 style="margin-bottom: 20px;">마이 페이지</h1>
<form style="text-align: center">
    <span>안녕하세요, <strong>${memberName}</strong>님</span>

    <c:choose>
        <c:when test="${adminData == 'admin'}">
            <a href="likeForm?memberno=${number}" class="button" style="margin-right:2px;">좋아요 표시 목록</a>
            <a style="margin-right:2px;" href="commentForm?memberno=${number}" id="commentButton" class="button">게시글 작성 목록</a>

            <a href="member_recent"><button type="button" class="button">회원정보 수정</button></a>
            <a href="storeForm"><button type="button" class="button">점포등록</button></a>
            <a href="/logout" class="button">로그아웃</a>
        </c:when>

        <c:when test="${LoggedIn}">
            <a href="likeForm?memberno=${number}" class="button" style="margin-right:2px;">좋아요 표시 목록</a>
            <a style="margin-right:2px;" href="commentForm?memberno=${number}" id="commentButton" class="button">게시글 작성 목록</a>
            <a href="member_recent" class="button">회원정보 수정</a>
            <a href="/logout" class="button">로그아웃</a>
        </c:when>
    </c:choose>
</form>

<div id="here" style="margin-bottom:50px;"></div>


<script>

</script>
</body>
</html>
