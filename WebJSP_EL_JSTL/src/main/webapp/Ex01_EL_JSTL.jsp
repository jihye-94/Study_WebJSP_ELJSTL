<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("userid"); 
	request.setAttribute("name", "korea");
	session.setAttribute("user", "bit"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSP</h3>
	<b><%=id %></b><br>
	<b><%=request.getAttribute("name") %></b><br>
	<b><%=session.getAttribute("user") %></b><br>
	<b><%=request.getParameter("userid") %></b><br>
	<!-- 이런 코드를 사용 안하겠다. -->
	<!-- EL(Expression Language)
	EL(출력을 담당하는 표현식) : JSP페이지에서 사용되는 스크립트(서버쪽 내용을 출력할 수 있는) 언어
	이유: (% 스파케티 코드 생산(HTML,CSS와 어울리지 못하고 혼재되어있어 유지보수가 힘듬, 코드 해석이 힘듬)) 
	 
	문제해결 : html과 잘 어울리고 [서버쪽 값도 출력]할 수 있는 script > EL & JSTL (단점: JSP종속) 
	
	EL : tomcat의 내장 자원으로써 별도의 참조 없이 사용 가능
	
	[ EL의 객체 ] 
	1. param : 요청 파라미터의 값을 String으로, request.getParameter()의 결과와 동일
	2. paramValue : 요청 파라미터의 값을 String[]으로, request.getParameterValues()의 결과와 동일
	3. requestScope : request 영역 참조
	4. sessionScope : session 영역 참조
	5. applicationScope : application 영역 참조
	
	
	 -->
	 
	 <hr>
	 <h3>EL 출력표현식</h3>
	 기존 스파케티<%=100+100%> <br>
	 
	 EL : ${200+200} <br>
	 EL : ${"1"+1}  <br> <!-- 문자형숫자는 자동형변환 발생 , 숫자 + 숫자로 컴파일 -->
	 EL : ${1==1} <br>
	 EL : ${false} <br>
	 EL : ${!false } <br>
	 EL : ${empty x} <br> <!--x의 값이 null이면 true -->	 
	 
</body>
</html>









