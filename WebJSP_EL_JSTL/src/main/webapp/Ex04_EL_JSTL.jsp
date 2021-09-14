<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
/* 기존 방식 */
String id = request.getParameter("ID");

if (id.equals("hong")) {
%>
	<%=id%><img src="images/1.jpg" style="width: 100px; height: 100px">
<%
}
%> 



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El_JSTL_제어문_IF</title>
</head>
<body>
	<h3>EL 과 JSTL 사용하기  ****</h3>
	
	${param.ID} <!-- === request.getParameter("ID"); --><br>
	<c:if test="${param.ID == 'hong'}"> <!-- === if (id.equals("hong")) { -->
		${param.ID}<img src="images/1.jpg" style="width: 100px ; height: 100px">
		<!--===</%=id%><img src="images/1.jpg" style="width: 100px; height: 100px"> -->
	</c:if>
	
	<h3>JSTL IF</h3>
	<!-- 
	http://localhost:8090/WebJSP_EL_JSTL/Ex04_EL_JSTL.jsp?ID=kglim&age=25
	 -->
	 <c:if test="${param.age > 20}" var="result">
	 	 param.value : ${param.age}
	 </c:if> <br>
	 
	 if구문에 만들었던 var 변수값 : ${result}<br>

</body>
</html>