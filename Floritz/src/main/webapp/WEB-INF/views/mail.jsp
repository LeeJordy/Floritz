<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>메일 보내기</title>
</head>
<body>
    <form method="post" action="/mail">
        <input type="text" name="receiver" placeholder="받는 사람 입력"><br>
        <input type="text" name="title" placeholder="제목"><br>
        <textarea name= "content" cols="10" rows="10"></textarea><br>
        <input type="submit" value="전송">
    </form>
</body>
</html>



