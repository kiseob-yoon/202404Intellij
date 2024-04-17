<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집랭킹</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/root.css">
    <link href="css/carousel.css" rel="stylesheet">
</head>
<body>

<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
    <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
    </symbol>
    <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
    </symbol>
    <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
    </symbol>
    <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
    </symbol>
</svg>

<div class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
    <button class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center"
            id="bd-theme"
            type="button"
            aria-expanded="false"
            data-bs-toggle="dropdown"
            aria-label="Toggle theme (auto)">
        <svg class="bi my-1 theme-icon-active" width="1em" height="1em"><use href="#circle-half"></use></svg>
        <span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
    </button>
    <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
        <li>
            <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
                <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#sun-fill"></use></svg>
                Light
                <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
            </button>
        </li>
        <li>
            <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark" aria-pressed="false">
                <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
                Dark
                <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
            </button>
        </li>
        <li>
            <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto" aria-pressed="true">
                <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#circle-half"></use></svg>
                Auto
                <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
            </button>
        </li>
    </ul>
</div>


<header data-bs-theme="dark">
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">맛집랭킹</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                    </li>
                </ul>
                <div style="text-align: right;">

                    <c:choose>
                        <c:when test="${adminData == 'admin'}">
                            <a href="logout"><button type="button" class="btn btn-outline-success">로그아웃</button></a>
                            <a href="member_recent"><button type="button" class="btn btn-outline-success">회원정보 수정</button></a>
                            <a href="storeForm"><button type="button" class="btn btn-outline-success">점포등록</button></a>
                        </c:when>

                        <c:when test="${LoggedIn}">
                            <a href="logout"><button type="button" class="btn btn-outline-success">로그아웃</button></a>
                            <a href="member_recent"><button type="button" class="btn btn-outline-success">회원정보 수정</button></a>
                        </c:when>

                        <c:otherwise>
                            <a href="login_main"><button type="button" class="btn btn-outline-success">로그인</button></a>
                        </c:otherwise>
                    </c:choose>


                </div>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</header>

<main>

    <div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/cafe1.jpg" class="d-block w-100" alt="First slide">
                <div class="container">
                    <div class="carousel-caption text-start">
                        <h1>Example headline.</h1>
                        <p class="opacity-75">Some representative placeholder content for the first slide of the carousel.</p>
                        <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg>
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Another example headline.</h1>
                        <p>Some representative placeholder content for the second slide of the carousel.</p>
                        <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg>
                <div class="container">
                    <div class="carousel-caption text-end">
                        <h1>One more for good measure.</h1>
                        <p>Some representative placeholder content for the third slide of this carousel.</p>
                        <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</main>
<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>






  <header class="p-3 mb-3 border-bottom">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 link-body-emphasis text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>
        
        <img src="img/award.svg" alt="홈" width="50" height="50"><h2 class="logo">맛집랭킹</h2>

      <div class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 mx-auto">
        <form action="selectStore" class="d-flex" role="search" onsubmit="return validateForm()">
          <input name="storename" type="search" class="form-control" placeholder="search" aria-label="Search" id="searchInput">
                  <input type="submit" value="검색" class="btn btn-outline-success" style="margin-left:10px;">
        </form>

      </div>
      
        

      </div>
    </div>
  </header>


<div class="WrapMain">

<section>
    <div class="inner">
        <div class="wrap">
        <h3 style="text-align: left; border-bottom:1px solid #e9ecef; margin-top:100px;">가성비 BEST 4</h3>
        <c:forEach var="store" items="${storePointer}" varStatus="loop">
            <article>
            
                <div class="pic">
                <a href="menupan?id=${store.id}">
                    <img src="img/${store.id}/img.jpeg" alt="1번째 콘텐츠 이미지">
                </div>
                <h2><a href="menupan?id=${store.id}">${store.storename}</a></h2>
                <p>${store.business} 맛집</p>
                <p class="rest_info"></a></p>
            </article>

             </c:forEach>
        </div>
            </div>
</section>
<section>
    <div class="inner">
        <div class="wrap">
<div style="display: flex; align-items: center; width: 100%;">
    <h3 style="text-align: left; margin-top:100px; margin-bottom: 25px; flex-grow: 1;">TOP10 맛집 정보</h3>
    <div class="tab" id="tab-area" style="flex-basis: 300px; flex-shrink: 0;">
        <ul class="tab_list" style="display: flex; list-style-type: none; justify-content: flex-end; margin: 0;">
            <li id="latest" style="cursor: pointer; margin-top:80px;">최신순</li>
            <li id="popularity" style="cursor: pointer; margin-top:80px;">인기순</li>  
        </ul>
    </div>
</div>
        </div>
            </div>
<div id="here" style="width: 100%; height: 400px; margin-bottom: 250px;"></div>
</section>
    <footer>
        <div class="inner">
            <div class="upper">
                <h1>맛집랭킹</h1>
                <ul>
                    <li><a href="#">Policy</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">Family Site</a></li>
                    <li><a href="#">Sitemap</a></li>
                </ul>
            </div>
            <div class="lower">
                <address>
                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quas,
                    facere.<br> TEL : 031-111-1234 C.P : 010-1234-5678
                </address>
                <p>2024 맛집랭킹 &copy; copyright all rights reserved.</p>
            </div>
        </div>
    </footer>


</div>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>


$(function() {
    // 최신순 클릭 이벤트 핸들러
    $("#latest").click(function() {
        $.ajax({
            url: '/selectAll',
            method: 'GET',
            success: function(data) {
                $('#here').html(data);
            }
        });
    });

    // 인기순 클릭 이벤트 핸들러
    $("#popularity").click(function() {
        $.ajax({
            url: '/selectRank',
            method: 'GET',
            success: function(data) {
                $('#here').html(data);
            }
        });
    });

    // 페이지 로드 시 초기 데이터 로드
    $.ajax({
        url: '/selectAll',
        method: 'GET',
        success: function(data) {
            $('#here').html(data);
        }
    });
});

function validateForm() {
    var input = document.getElementById('searchInput').value;
    if (input.trim() === "") {
        Swal.fire({  // SweetAlert 함수 사용
            title: '알림!',
            text: '검색어를 입력해 주세요.',
            icon: 'info',  // 아이콘 종류: 'warning', 'error', 'success', 'info'
            confirmButtonText: '확인'
        });
        return false;
    }
    return true;
}


</script>

</body>
</html>