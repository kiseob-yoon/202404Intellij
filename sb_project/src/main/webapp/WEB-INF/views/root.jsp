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

</head>
<body>

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