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
    <label>��ǥ �ĺ�</label>
    <form method="post" action="vote" class="textForm">
        <div><input type="radio" value="c1" name="radio" checked> <label for="c1">�質��</label></div>
        <div><input type="radio" value="c2" name="radio"> <label for="c2">������</label></div>
        <div><input type="radio" value="c3" name="radio"> <label for="c3">�����</label></div>
        <div><input type="radio" value="c4" name="radio"> <label for="c4">�ֿ���</label></div>

        <div><input type="submit" value="��ǥ�ϱ�" class="btn"></div>
    </form>
</div>
<%
    if (request.getAttribute("isAdmin") != null) {
        boolean isAdmin = (boolean) request.getAttribute("isAdmin");%>
<div><a href="result"><input type='button' value='��ǥ �������' class="btn btn-success"
                             style='width:130px; margin-left:25px;'/></a></div>
<%}%>
</body>
</html>