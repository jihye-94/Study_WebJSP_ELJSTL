<%@page import="java.util.HashMap"%>
<%@page import="kr.or.bit.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 외부 Lib 사용방법
1. jar파일 lib 폴더에 복붙 
2. taglib uri에 사용할 uri="http://java.sun.com/jsp/jstl/core" 입력 
3. 별칭주기 prefix="c" -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
	Emp e = new Emp(); 
	e.setEmpno(2000); 
	e.setEname("bituser"); 
	
	HashMap<String, String> hp = new HashMap<String, String>(); 
	hp.put("data","1004"); 
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El_JSTL</title>
</head>
<body>
	<h3>기존방식</h3>
	<%=e %> <br>
	<%=e.getEmpno() %> <br>
	<%=e.getEname() %> <br>
	
	<h3>EL 출력(서버)</h3>
	EL: 자바 객체에 대한 직접적 접근 불가!! ${e} //안나옴 <br>
	EL: 자바 객체에 대한 직접적 접근 불가!! ${e.getEmpno()} //안나옴 <br>
	
	1. 웹에 사용하는 객체로 변환시켜 사용해야한다. 
		ㄴ객체를 request, session에 담아서 사용
	2. JSTL 사용(변수, 제어)
	 
	<h3>JSTL(core엔진 사용): 변수와 제어문 사용해서 자바코드 없이 출력 가능하게</h3>
	<c:set var="m" value="<%=e%>"/> <!-- m이라는 변수가 e라는 값을 받아냄  -->
	JSTL을 통해서 만든 변수는 EL 사용가능: ${m} <br>
	
	EL에서는 getter 사용하지 않음
	${m.getEmpno()}-${m.getEname()} <br>
	
	EL출력(m.memberfield명: 자동으로 getter 호출): ${m.empno} <br>
	EL출력(m.memberfield명: 자동으로 getter 호출): ${m.ename} <br>
	<hr>
	<!-- 
	EL: 출력목적 >> 변수, 제어구조 개념이 없음 
	JSTL: EL을 도와서 변수, 제어구조 정의함 
	 -->
	 
	<c:set var="username" value="${m.ename}"/>
	변수값 출력: ${username} <br>
	
	<hr>
	<h3>JSTL변수 생성과 scope정의</h3>
	<c:set var="jop" value="농구선수" scope="request"/>
	1. 현재 페이지 내에서만 사용가능 <br>
	2. include or forward 한 페이지가 있다면 request 객체는 공유된다 <br>
	
	당신의 직업은: ${job} <br>
	
	<hr>
	<c:set var="jop2" value="야구선수" scope="request"/>
	값 출력 ${job2} <br>
	
	만든 변수 삭제기능(잘 사용하지않음) <br>
	<c:remove var="job2"/>
	값 출력 ${job2} <br>
	
	<hr>
	hp 객체 직접 접근: ${hp} <br>
	<c:set var="vhp" value="<%=hp%>" />
	hp객체 : ${vhp} <br> <!-- {data=1004} -->
	hp객체 : ${vhp.data} <br> 
	
	그냥 재미삼아 <br>
	<!--  
	hp.put("color","red")
	 -->
	 
	<c:set target="${vhp}" property="color" value="red"/> 
	hp객체: ${vhp} <br>

	<c:set var="vhp" property="color" value="blue"/> 
	
	hp객체: ${vhp} <br>

 
</body>
</html>