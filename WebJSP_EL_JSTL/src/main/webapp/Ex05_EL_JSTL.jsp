<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
/*
JSTL 구문
*1. <c:set 		: 변수 생성, 값 저장
2. <c:remove 	: 변수 삭제
*3. <c:if test="조건절" : 단일 if문(else불가)
*4. <c:choose	: swich-case문 (다중 조건 처리 가능, if문보다 활용도 높음
*5. <c:forEach	: 반복문 
6. <c:forTokens : for+split 
7. <c:out		: 출력(보단 EL의 ${} 선호) 
8. <c:catch		: 예외처리 
*/
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El_JSTL_중첩IF</title>
</head>
<body>
	<h3>EL & JSTL</h3>
	EL parameter 사용: 
	${param.id} - ${param.pwd} <br>
	
	<h3>EL parameter 값을 변수에 저장</h3>
	<c:set var="userid" value="${param.id}"/>
	<c:set var="userpwd" value="${param.pwd}"/>
	<hr>
	<h3>JSTL 변수 값을 출력</h3>
	id : ${userid} <br>
	pwd : ${userpwd} <br>
	<hr>
	<c:if test="${!empty userpwd }"> <!-- 조건: 비밀번호가 존재한다면 -->
		<h3>not empty userpwd</h3>
		<c:if test="${userpwd=='1004'}">
		<h3>welcome Admin page</h3>
		</c:if> <!-- 중첩 if 생성 가능 prameter는 String -->		
	</c:if>
	<!-- http://localhost:8090/WebJSP_EL_JSTL/Ex05_EL_JSTL.jsp?id=sjh&pwd=1004 
	http://localhost:8090/WebJSP_EL_JSTL/Ex05_EL_JSTL.jsp?id=sjh&pwd=1007  -->
</body>
</html>