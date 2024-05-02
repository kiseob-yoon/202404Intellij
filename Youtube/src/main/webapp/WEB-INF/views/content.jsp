<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

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
            width: 30%; /* 첫 번째 셀의 너비 비중 설정 */
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







    </style>
    <link href="css/sidebars.css" rel="stylesheet">
</head>
<body>

<header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
    <a href="index.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" fill="currentColor" class="bi bi-film" viewBox="0 0 16 16" style="margin: 10px;">
            <path d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1zm4 0v6h8V1zm8 8H4v6h8zM1 1v2h2V1zm2 3H1v2h2zM1 7v2h2V7zm2 3H1v2h2zm-2 3v2h2v-2zM15 1h-2v2h2zm-2 3v2h2V4zm2 3h-2v2h2zm-2 3v2h2v-2zm2 3h-2v2h2z"/>
        </svg>
        <span class="fs-4">Coding Education</span>
    </a>

    <ul class="nav nav-pills">
        <li class="nav-item"><a href="sessionLogout.jsp" class="nav-link">Logout</a></li>
    </ul>
</header>

<main class="d-flex flex-nowrap">
    <h1 class="visually-hidden">Sidebars examples</h1>
    <div class="b-example-divider b-example-vr"></div>

    <div class="d-flex flex-column flex-shrink-0 p-3 bg-body-tertiary" style="width: 280px;">
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
        <hr>
        <div class="dropdown">
            <a href="#" class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                <strong>mdo</strong>
            </a>
            <ul class="dropdown-menu text-small shadow">
                <li><a class="dropdown-item" href="#">New project...</a></li>
                <li><a class="dropdown-item" href="#">Settings</a></li>
                <li><a class="dropdown-item" href="#">Profile</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Sign out</a></li>
            </ul>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row g-3 border p-3" style="margin-top: 10px;">
            <div class="col-sm-6">
                <form action="/submit-form" method="post">
                    <div class="form-group">
                        <label for="firstName">콘텐츠명</label>
                        <input type="text" class="form-control" id="firstName" placeholder="" value="" style="max-width: 350px;">
                    </div>
                    <div class="invalid-feedback">
                        Valid first name is required.
                    </div>
                </form>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="lastName">교과목명</label>
                    <input type="text" class="form-control" id="lastName" placeholder="" value="" style="max-width: 350px;">
                    <button class="btn btn-primary">조회</button>
                </div>
                <div class="invalid-feedback">
                    Valid last name is required.
                </div>
            </div>
        </div>

        <div class="row g-3 border p-3" style="margin-top: 50px;">
            <h4>온라인콘텐츠</h4>
            <div class="col-md-7" style="overflow-x: auto; overflow-y: auto; max-height: 700px;">

                <table class="table table-striped table-bordered table-hover">
                    <thead class="table-light">
                    <tr>
                        <th scope="col" style="text-align: center;">교과목</th>
                        <th scope="col" style="text-align: center;">콘텐츠명</th>
                        <th scope="col" style="text-align: center;">Youtube연동번호</th>
                        <th scope="col" style="text-align: center;">학습시간</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Java</td>
                        <td style="text-align: right;">객체지향</td>
                        <td style="text-align: center;">1</td>
                        <td style="text-align: center;">58분50초</td>
                    </tr>
                    <tr>
                        <td>Python</td>
                        <td style="text-align: right;">조건문</td>
                        <td style="text-align: center;">2</td>
                        <td style="text-align: center;">40분10초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">Dom</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">Ajax</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">API</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">API</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">API</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">API</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">API</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">API</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">API</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">API</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">API</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">API</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">API</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td style="text-align: right;">API</td>
                        <td style="text-align: center;">3</td>
                        <td style="text-align: center;">55분21초</td>
                    </tr>
                    </tbody>
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
                        <button style="float: right; margin-right: 5px;">삭제</button>
                        <button style="float: right; margin-right: 5px;">수정</button>
                        <button style="float: right; margin-right: 5px; margin-bottom: 10px;">신규</button>

                        <table class="table table border">

                            <tbody>
                            <tr>
                                <td class="table-light" >콘텐츠관리번호</td>
                                <td><input type="text" class="form-control"  value="C-8087" readonly></td>
                            </tr>
                            <tr>
                                <td class="table-light">콘텐츠명</td>
                                <td><input type="text" class="form-control" value="변수의 개념"></td>
                            </tr>
                            <tr>
                                <td class="table-light">교과목명</td>
                                <td><input type="text" class="form-control" value="Java"></td>
                            </tr>
                            <tr>
                                <td class="table-light">콘텐츠구성명</td>
                                <td><input type="text" class="form-control" value="서식1"></td>
                            </tr>
                            <tr>
                                <td class="table-light">콘텐츠설명</td>
                                <td><input type="text" class="form-control" value="서식컨텐츠"></td>
                            </tr>
                            <tr>
                                <td class="table-light">Youtube비디오ID</td>
                                <td><input type="text" class="form-control" value="Fe8_DiSs_9Q" readonly></td>
                            </tr>
                            <tr>
                                <td class="table-light">차시학습시간[초]</td>
                                <td><input type="text" class="form-control" value="2850" readonly></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div id="chapterInfo" style="overflow-x: auto; overflow-y: auto; max-height: 300px;">
                        <table class="table table-border">
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
                                <td class="table-light" style="text-align: center;">1</td>
                                <td>B-0423</td>
                                <td>00:00:00</td>
                                <td>00:00:00</td>

                            </tr>
                            <tr>
                                <td class="table-light" style="text-align: center;">2</td>
                                <td>변수의 개념</td>
                                <td>00:00:00</td>
                                <td>00:00:00</td>
                            </tr>
                            <tr>
                                <td class="table-light" style="text-align: center;">3</td>
                                <td>Java</td>
                                <td>00:00:00</td>
                                <td>00:00:00</td>
                            </tr>
                            <tr>
                                <td class="table-light" style="text-align: center;">4</td>
                                <td>서식1</td>
                                <td>00:00:00</td>
                                <td>00:00:00</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>



                </div>
            </div>

        </div>
    </div>


</main>

<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
<script src="sidebars.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
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

</script>

</body>
</html>