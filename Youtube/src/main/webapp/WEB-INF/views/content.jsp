<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous">
    <style>
        .navbar-custom {
            height: 85px; /* 네비게이션 바의 높이를 70px로 설정 */
            padding-top: 10px; /* 상단 패딩 추가 */
            padding-bottom: 10px; /* 하단 패딩 추가 */
        }

        .navbar-nav .nav-link {
            padding-top: 10px; /* 링크 상단 패딩 추가 */
            padding-bottom: 10px; /* 링크 하단 패딩 추가 */
        }
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            width: 100%;
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        .btn-bd-primary {
            --bd-violet-bg: #712cf9;
            --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

            --bs-btn-font-weight: 600;
            --bs-btn-color: var(--bs-white);
            --bs-btn-bg: var(--bd-violet-bg);
            --bs-btn-border-color: var(--bd-violet-bg);
            --bs-btn-hover-color: var(--bs-white);
            --bs-btn-hover-bg: #6528e0;
            --bs-btn-hover-border-color: #6528e0;
            --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
            --bs-btn-active-color: var(--bs-btn-hover-color);
            --bs-btn-active-bg: #5a23c8;
            --bs-btn-active-border-color: #5a23c8;
        }
        .bd-mode-toggle {
            z-index: 1500;
        }

        .container {
            width: 2500px;
            height: 100%;
        }
        .form-group {
            display: flex;
            align-items: center;
        }
        .form-group label {
            flex: 0 0 auto; /* 레이블 크기 조절 */
            margin-right: 50px; /* 레이블과 입력 사이 간격 조절 */
        }
        .form-group input{
            margin-right: 20px;
        }

        .table-light {
            width: 30%;
            font-weight: bold; /* 첫 번째 셀의 너비 비중 설정 */
        }
        .table-light + td {
            width: 70%; /* 두 번째 셀의 너비 비중 설정 */
        }
        #tabMenu {
            margin-top: -25px; /* 원하는 만큼 위로 이동 */
        }

        #chapterInfo {
            display: none; /* 챕터정보 테이블을 숨김 */
        }

        .input-full-width {
            width: 100%;
        }
        a {
            text-decoration: none; /* 링크에 밑줄 제거 */
            color: inherit; /* 기본 링크 색상으로 설정 */
            cursor: pointer; /* 마우스 커서를 포인터로 변경 */
           }

    </style>
</head>
<body>

<header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
      <img src="img/online.png" style="width: 120px; height: 100px; margin-right: 10px;">
        <span class="fs-4">Coding Education</span>
    </a>

    <ul class="nav nav-pills">
      <img src="img/person-circle.svg" style="width: 60px; height: 38px; margin: 10px 20px 0px 0px;">

    </ul>
</header>

<main class="d-flex flex-nowrap">
    <div id="sidebar" class="flex-column flex-shrink-0 p-3 bg-body-tertiary" style="width: 280px;">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
            <svg class="bi pe-none me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
            <span class="fs-4">Sidebar</span>
        </a>
        <hr>
        <ul class="nav nav-pills flex-column mb-auto">
            <li class="nav-item">
                <a href="#" class="nav-link active" aria-current="page">
                    <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#home"/></svg>
                    Home
                </a>
            </li>
            <li>
                <a href="#" class="nav-link link-body-emphasis">
                    <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
                    Dashboard
                </a>
            </li>
            <li>
                <a href="#" class="nav-link link-body-emphasis">
                    <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#table"/></svg>
                    Orders
                </a>
            </li>
            <li>
                <a href="#" class="nav-link link-body-emphasis">
                    <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#grid"/></svg>
                    Products
                </a>
            </li>
            <li>
                <a href="#" class="nav-link link-body-emphasis">
                    <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
                    Customers
                </a>
            </li>
        </ul>


        <button id="btn-hide" class="btn btn-primary" style="margin-top: 500px;">메뉴숨기기</button>
</div>
<div>

    <button id="btn-show" class="btn btn-primary" style="margin-top: 780px; border-radius: 50%;">
        <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8"/>
          </svg>
    </button>
</div>

    <div class="container-fluid">
        <div class="row g-3 border p-3" style="margin-top: 10px; border-radius: 10px;">
            <div class="col-sm-6">
                <form action="selectSearch" method="post">
                    <div class="form-group" style="margin-left: 40px;">
                        <label for="firstName">콘텐츠명</label>

                        <input type="text" class="form-control" id="firstName" name="conName" placeholder="" value="" style="max-width: 350px;">
                    </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="lastName">교과목명</label>

                    <input type="text" class="form-control" id="lastName" name="lecName" placeholder="" value="" style="max-width: 350px;">
                    <input type="submit"class="btn btn-primary" value="검색"></input>
                </div>
            </div>
              </form>
        </div>

        <div class="row g-3 border p-3" style="margin-top: 50px;">
            <h4>온라인콘텐츠</h4>
            <div class="col-md-7" style="overflow-x: auto; overflow-y: auto; max-height: 600px;">

                <table class="table table-striped table-bordered table-hover">
                    <thead class="table-light">
                    <tr>
                        <th scope="col" style="text-align: center;">교과목</th>
                        <th scope="col" style="text-align: center;">콘텐츠명</th>
                        <th scope="col" style="text-align: center;">Youtube연동번호</th>
                        <th scope="col" style="text-align: center;">학습시간</th>
                    </tr>
                    </thead>

                <c:choose>
                    <c:when test="${empty selectSearch}">
                        <c:forEach var="contents" items="${contentList}" varStatus="loop">
                            <tbody>
                                <tr>
                                    <td onclick="handleClick('${contents.getConNum()}'); return false;">
                                        <a href="#">${contents.getLecName()}</a>
                                    </td>
                                    <td onclick="handleClick('${contents.getConNum()}'); return false;">${contents.getConName()}</td>
                                    <td onclick="handleClick('${contents.getConNum()}'); return false;">${contents.getVideoId()}</td>
                                    <td onclick="handleClick('${contents.getConNum()}'); return false;">${contents.getConPlayTime()}</td>
                                </tr>
                            </tbody>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="search" items="${selectSearch}" varStatus="loop">
                            <tbody>
                                <tr>
                                    <td onclick="handleClick('${search.getConNum()}'); return false;">
                                        <a href="#">${search.getLecName()}</a>
                                    </td>
                                    <td onclick="handleClick('${search.getConNum()}'); return false;">${search.getConName()}</td>
                                    <td onclick="handleClick('${search.getConNum()}'); return false;">${search.getVideoId()}</td>
                                    <td onclick="handleClick('${search.getConNum()}'); return false;">${search.getConPlayTime()}</td>
                                </tr>
                            </tbody>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>


                </table>

            </div>

            <div class="col-md-5" id="tabMenu">

                <ul class="nav nav-tabs">

                    <li class="nav-item">
                        <a class="nav-link active" id="tab1" data-toggle="tab" href="#notice">컨텐츠정보</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="tab2" data-toggle="tab" href="#dataRoom">챕터정보</a>
                    </li>
                </ul>

                <div id="notice" class="tabContent">

                    <div id="contentInfo" class="mb-3">

                        <table class="table table border">

                        <form action="updateContent">
                            <tbody>
                            <tr>
                                <td class="table-light">콘텐츠관리번호</td>

                                <td><input type="text" class="form-control" name="conNum" value="${selectContent.conNum}"></td>

                            </tr>
                            <tr>
                                <td class="table-light">콘텐츠명</td>
                                <td><input type="text" class="form-control" id="conName" name="conName" value="${selectContent.conName}"></td>
                            </tr>
                            <tr>
                                <td class="table-light">교과목명</td>
                                <td><input type="text" class="form-control" id="lecName" name="lecName" value="${selectContent.lecName}"></td>
                            </tr>
                            <tr>
                                <td class="table-light">콘텐츠설명</td>
                                <td><input type="text" class="form-control" name="description" value="${selectContent.description}"></td>
                            </tr>
                            <tr>
                                <td class="table-light">Youtube비디오ID</td>
                                <td>
                                <div style="display: flex; align-items: center;">
                                <input type="text"class="form-control" name="videoId" value="${selectContent.videoId}">
                                <input type="button" class="js-preview-link" data-conNum="${conNum}" value="영상확인">
                                </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="table-light">차시학습시간[초]</td>
                                <td><input type="text" class="form-control" name="conPlayTime" value="${selectContent.conPlayTime}">
                                </td>

                            </tr>

                            </tbody>

                        </table>
                            <input type="hidden" name="id" value="${selectContent.id}">
                            <input type="submit" value="저장" class="btn btn-primary" style="float: right; margin-right: 5px;">
                            </form>

                            <form action="deleteContent">
                            <input type="hidden" name="id" id="deleteBtn"  value="${selectContent.id}">
                            <input type="submit" class="btn btn-primary" style="float: right; margin-right: 5px;" value="삭제">
                            </form>

                            <form action="insertContent" method="post">
                                <input type="hidden" class="form-control" name="conNum" value="${selectContent.conNum}">
                                <input type="hidden" class="form-control" name="conName" value="${selectContent.conName}">
                                <input type="hidden" class="form-control" name="lecName" value="${selectContent.lecName}">
                                <input type="hidden" class="form-control" name="description" value="${selectContent.description}">
                                <input type="hidden" class="form-control" name="videoId" value="${selectContent.videoId}">
                                <input type="hidden" class="form-control" name="conPlayTime" value="${selectContent.conPlayTime}">
                                <input type="submit" class="btn btn-primary" style="float: right; margin-right: 5px; margin-bottom: 10px;" value="신규"></button>
                            </form>

                    </div>

                    <div id="chapterInfo" style="overflow-x: auto; overflow-y: auto; max-height: 200px;">
                        <table class="table table-striped table-bordered table-hover">
                            <thead class="table-light">
                            <tr>
                                <th scope="col" style="text-align: center;">챕터</th>
                                <th scope="col" style="text-align: center;">챕터명</th>
                                <th scope="col" style="text-align: center;">위치(시분초)</th>
                                <th scope="col" style="text-align: center;">시작위치[초]</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td style="text-align: center;">1</td>
                                <td style="text-align: center;">B-0423</td>
                                <td style="text-align: center;">00:00:00</td>
                                <td style="text-align: center;">20</td>

                            </tr>
                            <tr>
                                <td style="text-align: center;">2</td>
                                <td style="text-align: center;">변수의 개념</td>
                                <td style="text-align: center;">00:00:00</td>
                                <td style="text-align: center;">60</td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">3</td>
                                <td style="text-align: center;">Java</td>
                                <td style="text-align: center;">00:00:00</td>
                                <td style="text-align: center;">150</td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">4</td>
                                <td style="text-align: center;">서식1</td>
                                <td style="text-align: center;">00:00:00</td>
                                <td style="text-align: center;">200</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>

        </div>
    </div>
</main>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script>
    // 탭을 클릭했을 때 해당하는 테이블 보이도록 처리
    $(document).ready(function(){
        $("#tab1").click(function(){
            $("#contentInfo").show();
            $("#chapterInfo").hide();
        });
        $("#tab2").click(function(){
            $("#contentInfo").hide();
            $("#chapterInfo").show();
        });
    });

    document.addEventListener('DOMContentLoaded', function() {
    var btnHide = document.querySelector('#btn-hide');
    var btnShow = document.querySelector('#btn-show');

    // 초기에는 사이드바를 보여주고 메뉴숨기기 버튼만 활성화합니다.
    var sidebar = document.querySelector('#sidebar');
    sidebar.style.display = 'block';
    btnHide.style.display = 'block';
    btnShow.style.display = 'none';

    // 메뉴숨기기 버튼을 누르면 사이드바를 감추고 메뉴열기 버튼을 활성화합니다.
    btnHide.addEventListener('click', function() {
        sidebar.style.display = 'none';
        btnHide.style.display = 'none';
        btnShow.style.display = 'block';
    });

    // 메뉴열기 버튼을 누르면 사이드바를 보여주고 메뉴숨기기 버튼을 활성화합니다.
    btnShow.addEventListener('click', function() {
        sidebar.style.display = 'block';
        btnShow.style.display = 'none';
        btnHide.style.display = 'block';
    });
});

// 클릭 이벤트 핸들러
function handleClick(conNum) {

    // 클릭된 요소의 conNum 값을 사용하여 AJAX 요청을 보냅니다.
    $.ajax({
        type: "GET",
        url: "/selectContent?conNum=" + conNum, // 클릭된 요소의 conNum 값을 URL에 포함
        success: function(response) {
            // Ajax 요청이 성공하면 받은 데이터를 사용하여 폼 필드에 값을 설정합니다.
            $('input[name="conNum"]').val(response.conNum);
            $('#conName').val(response.conName);
            $('#lecName').val(response.lecName);
            $('input[name="description"]').val(response.description);
            $('input[name="videoId"]').val(response.videoId);
            $('input[name="conPlayTime"]').val(response.conPlayTime);
            $('input[name="id"]').val(response.id);
            $('.js-preview-link').data('conNum', response.conNum);

        },
        error: function(xhr, status, error) {
            // 오류 처리
            console.error("Error:", error);
        }
    });
}

$(document).ready(function() {
    $('.js-preview-link').click(function(e) {
        e.preventDefault(); // 링크의 기본 동작을 중지

        // 클릭된 버튼이 속한 행의 콘텐츠 번호 가져오기
        var conNum = $(this).data('conNum');

        // AJAX 요청 보내기
        $.ajax({
            type: "GET",
            url: "/selectContent?conNum=" + conNum,
            success: function(response) {
                // AJAX 요청이 성공한 경우
                var videoId = response.videoId;
                var youtubeLink = "https://www.youtube.com/watch?v=" + videoId;
                window.open(youtubeLink, "_blank"); // 새 창에서 유튜브 링크 열기
            },
            error: function(xhr, status, error) {
                // 오류 처리
                console.error("Error:", error);
            }
        });
    });
});

// 폼 제출 이벤트 리스너 추가
document.getElementById("searchForm").addEventListener("submit", function(event) {
    event.preventDefault(); // 기본 제출 행동 막기
    var form = this;
    var formData = new FormData(form); // 폼 데이터 가져오기

    // lecName 필드 값 가져오기
    var lecNameValue = document.getElementById("lastName").value;

    // AJAX 요청 생성
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "/selectSearch"); // 서버의 실제 경로로 변경해야 함
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    // 요청 완료 후의 동작 설정
    xhr.onload = function() {
        if (xhr.status === 200) {
            // 응답 처리
            console.log(xhr.responseText);
        } else {
            // 오류 처리
            console.error("오류 발생:", xhr.statusText);
        }
    };

    // 요청 전송
    xhr.send(new URLSearchParams(formData)); // FormData를 쿼리 문자열로 변환하여 전송
});

</script>
</body>
</html>