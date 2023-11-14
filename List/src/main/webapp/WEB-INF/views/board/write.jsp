<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Floritz 업체 등록</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/main.css" />

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script>
    window.onload = function() {
        document.querySelector('#quokka2').addEventListener('click', function() {
            document.querySelector('#formSection').style.display = 'block';
        });
    };
</script>
<style>
body {
	font-family: 'NanumSquareNeo-Variable';
}

.form-group {
    display: flex;
    justify-content: flex-start;
}

.form-group .form-label {
    width: 20%; /* 레이블의 너비를 조정하려면 이 값을 변경하세요 */
}

.form-group .form-control {
    width: 80%; /* 입력 필드의 너비를 조정하려면 이 값을 변경하세요 */
}

/* 새로운 왼쪽 사이드바 스타일 */
#fixed-sidebar-wrapper {
    width: 250px;
    height: calc(100vh - 50px); /* 헤더 높이를 제외한 높이로 설정 */
    position: fixed;
    left: 0;
    top: 50px;  /* 헤더 높이만큼 상단 위치 조정 */
    z-index: 1000;  /* 다른 요소와 겹치지 않도록 z-index 값을 높게 설정 */
    border-right: 1px solid #ECECEC;  /* 오른쪽에 선 추가 */
}

#fixed-sidebar-wrapper .fixed-sidebar-nav {
    padding: 0;
    list-style: none;
}

#fixed-sidebar-wrapper .fixed-sidebar-nav li {
    text-indent: 20px;
    line-height: 40px;
}

#fixed-sidebar-wrapper .fixed-sidebar-nav li a {
    display: block;
    text-decoration: none;
}
/* 메인 콘텐츠 영역 스타일 */
#main-content {
    padding-left: 300px;  /* 사이드바 너비에 따라 조정 */
}

</style>
	
</head>
<body>
    <jsp:include page="/WEB-INF/resources/header.jsp" />
	<!-- 새로운 왼쪽 고정 사이드바 추가 -->
    <div id="fixed-sidebar-wrapper">
        <ul class="fixed-sidebar-nav">
            <li class="fixed-sidebar-brand">
            </li>
            <li>
                <a href="#">쿼카1</a>
            </li>
            <li id="quokka2">
                <a href="/WriteForm">쿼카2</a>
            </li>
        </ul>
    </div>
    <!-- /#fixed-sidebar-wrapper -->
	<div id="main-content">
    <div id="formSection" style="display: none;">
		<h2>정보 등록/수정</h2>	

		<form action="/Write" method="POST">
			<div class="mb-3 form-group" >
				<label for="formTitle" class="form-label"><b style="color:red">*</b>상호명</label>
				<input type="text" class="form-control" name="title" 
				id="formTitle" placeholder="상호명을 입력하세요">
			</div>
			<div class="mb-3 form-group" >
				<label for="formTitle" class="form-label"><b style="color:red">*</b>사업자등록증</label>
				<input type="file" class="form-control" name="title" 
				id="formTitle">
			</div>
			<div class="mb-3 form-group" >
				<label for="formTitle" class="form-label"><b style="color:red">*</b>외관사진</label>
				<input type="file" class="form-control" name="title" 
				id="formTitle">
			</div>
			<div class="mb-3 form-group">
				<label for="formWriter" class="form-label"><b style="color:red">*</b>전화번호 1</label>
				<input type="text" class="form-control" name="writer" 
				id="formWriter" placeholder="대표번호를 입력하세요">
			</div>
			<div class="mb-3 form-group">
				<label for="formWriter" class="form-label"> 전화번호 2</label>
				<input type="text" class="form-control" name="writer" 
				id="formWriter" placeholder="전화번호를 입력하세요">
			</div>
			<div class="mb-3 form-group">
				<label for="formWriter" class="form-label"><b style="color:red">*</b>휴무일</label>
				<input type="text" class="form-control" name="writer" 
				id="formWriter" placeholder="휴무일를 입력하세요 (ex: 매주 목요일)">
			</div>
			<div class="mb-3 form-group">
				<label for="formWriter" class="form-label"><b style="color:red">*</b>브레이크타임</label>
				<input type="text" class="form-control" name="writer" 
				id="formWriter" placeholder="브레이크타임을 입력하세요 (ex: 15시~17시)">
			</div>
			<div class="mb-3 form-group">
				<label for="formContent" class="form-label">상세내용</label>
				<input type="file" class="form-control" name="title" 
				id="formTitle">
			</div>
			<div class="mb-3 form-group">
				<label for="formContent" class="form-label"></label>
				<textarea class="form-control" id="formContent"  name="content"  rows="5"></textarea>
			</div>
			<div class="mb-3">
				<input type="submit" class="btn btn-dark"
					id="formSubmit" value="등록하기" >
			</div>

		</form>
	</div>

	</div>
	<!-- div main end -->
    
    <script>
       // cliens validation
       // form tag 에 submit 이벤트가 발생하면 (input type="submit", <button>, input type="image")
       const  formEl = document.querySelector('form');
       formEl.addEventListener('submit', function(e) {
    	   //alert('submit 클릭');
    	   console.dir(e);
    	   //alert(e.submitter.id)
    	   if(e.submitter.id == 'btnList') {
    		   e.preventDefault();  // submit 이벤트를 취소
    		   location.href="/List";
    		   return false;
    	   }
    	   
    	   // 필수입력체크
    	   const  titleEl    = document.querySelector('#formTitle');
    	   const  writerEl   = document.querySelector('#formWriter');    	 
    	   if( titleEl.value.trim()  == ''  ) {
    	   	   e.preventDefault();  // submit 이벤트를 취소
    		   alert('제목을 입력하세요')
    	   	   titleEl.focus();
    	   } else {
	    	   if( writerEl.value.trim()  == ''  ) {
	    	   	   e.preventDefault();  // submit 이벤트를 취소
	    		   alert('글쓴이를 입력하세요')
	    		   writerEl.focus();
	    	   } 
    	   }
    	   
       })
       
       const  homeEl  = document.querySelector('#formHome');
       homeEl.addEventListener('click', (e) => {
    	   location.href='/';
       });
    
    </script>

</body>
</html>




