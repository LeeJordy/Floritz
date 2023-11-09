<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="shortcut icon" href="/img/head.png">
<!-- Bootstrap icons-->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<link rel="stylesheet" href="/css/main.css" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/resources/header.jsp" />
  <div id="main">
    <h2>게시물 목록</h2>
    <button id="btnWrite" class="btn btn-dark" style="float:right;margin-bottom:20px;">새글 쓰기</button>
    <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">작성</th>
      <th scope="col">날짜</th>
      <th scope="col">조회</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="board" items="${ brdList }">
    <tr>
      <th scope="row">${ board.bno }</th>
      <td><a href="/View?bno=${ board.bno }">${ board.title   }</a></td>
      <td>${ board.writer  }</td>
      <td>${ board.regdate }</td>
      <td>${ board.hit     }</td>
    </tr>
    </c:forEach>
  </tbody>
</table>

    
  </div>
  
  <script>
    const btnWriteEl = document.querySelector('#btnWrite');
    btnWriteEl.addEventListener('click', function() {
    	location.href = '/WriteForm'
    });
  
  </script>
 
  
</body>
</html>





