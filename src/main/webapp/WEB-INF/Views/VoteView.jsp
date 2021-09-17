<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
    <link rel="stylesheet" href="css/index1.css">
</head>
<body>
<div class="wrap">
    <label>투표 후보</label>
    <form method="post" action="vote" class="textForm">
        <div><input type="radio" value="c1" name="radio" checked> <label for="c1">김나은</label></div>
        <div><input type="radio" value="c2" name="radio"> <label for="c2">이재현</label></div>
        <div><input type="radio" value="c3" name="radio"> <label for="c3">김수인</label></div>
        <div><input type="radio" value="c4" name="radio"> <label for="c4">최예준</label></div>

        <div><input type="submit" value="투표하기" class="btn"></div>
    </form>
</div>
<%
    if (request.getAttribute("isAdmin") != null) {
        boolean isAdmin = (boolean) request.getAttribute("isAdmin");%>
<div><a href="result"><input type='button' value='투표 결과보기' class="btn btn-success"
                             style='width:130px; margin-left:25px;'/></a></div>
<%}%>
</body>
</html>