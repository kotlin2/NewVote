<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
    
 
 
<!DOCTYPE html>
<html>
<head>
<script>
 	function start()
 	{
 		alert('기 투표자 입니다. 로그인 페이지로 돌아갑니다');
 		location.href="/";
 	}
 </script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body onload='start()'>
	
	
	<%
		//response.sendRedirect("/VotePjt/index.jsp");
	%>
</body>
</html>