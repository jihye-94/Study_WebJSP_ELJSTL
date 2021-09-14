<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

//EL은 스크립트 언어지만 서버 자원에 접근 가능하다. (<%= 사용하지 않아도 된다.)
//하지만 JAVA가 가지는 수많은 자원을 지원하지는 않음

	Date today = new Date(); //요거는 자바
	request.setAttribute("day", today); 
	session.setAttribute("day2", today); 


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL로 출력하기</title>
</head>
<body>
	<!-- 출력할 때 EL사용해보자 -->
	<h3>EL은 화면에 출력하기 전용! : EL 내부객체 활용</h3> 
	EL : ${requestScope.day} <br>
	EL : ${day} <br> <!-- requestScope 객체명 생략가능(권장x) -->
	EL : ${sessionScope.day2} <br> <!-- 얘도 객체명 생략가능한데 가독성 떨어지니 그냥 작성하자 -->
	
</body>
</html>