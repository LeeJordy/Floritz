<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>chatbot</title>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<!-- Simple line icons-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css" />
<link href="css/styles.css" rel="stylesheet" />
<link href="css/chatbot.css" rel="stylesheet" />
<style>
  
  </style>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


  <script type="text/javascript">
    var ws;
    function wsOpen() {
    	ws = new WebSocket("ws://" + location.host + "/chating");
    	wsEvt();
    }
    function wsEvt() {
    	ws.onopen = function(data){
    		// 소켓이 열리면 초기화 세팅하기
	  	}
    	ws.onmessage = function(data) {
    		var msg = data.data;
    		if(msg != null && msg.trim() != ''){
    			$("#chating").append("<p>" + msg + "</p>");
    		}
    } 
    document.addEventListener("keypress", function(e) {
    	if(e.keyCode == 13){ // enter press
    		send();
    	}
    });
    }
    function chatName(){
    	var userName = $("#userName").val();
    	if(userName == null || userName.trim() == ""){
    		alert("사용자 이름을 입력해주세요");
    		$("#userName").focus();
    	}else{
    		wsOpen();
    		$("#yourName").hide();
    		$("#yourMsg").show();
    	}
    }
    function send() {
    	var uN = $("#userName").val();
    	var msg = $("#chatting").val();
    	ws.send(uN+" : "+msg);
    	$('#chatting').val("");
    }
  </script>

</head>



<body>
<jsp:include page="/WEB-INF/resources/header.jsp" />
<div id="container" class="container">
	<h1>ChatBot</h1>
	<div id="chating" class="chating">
	</div>
	
	<div id="yourName">
		<table>
			<tr>
				<th>닉네임</th>
				<th><input class="form-control form-control-sm" type="text" name="userName" id="userName" /></th>
				<th><button class="btn btn-sm btn-primary" onclick="chatName()" id="startBtn">등록</button></th>
			</tr>
		</table>
	</div>
	<div id="yourMsg">
		<table>
		<tr>
			<th>메세지</th>
			<th><input class="form-control form-control-sm" id="chating" placeholder="보내실 메세지를 입력하세요."></th>
			<th><button class="btn btn-sm btn-primary" onclick="send()" id="sendBtn">보내기</button></th>
		</tr>
		</table>
	</div>
</div>
</body>
</html>



