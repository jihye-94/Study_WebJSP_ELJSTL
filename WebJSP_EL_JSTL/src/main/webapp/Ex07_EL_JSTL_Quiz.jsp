<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String name = request.getParameter("name");
	if(name.equals("kglim")){
		out.print("<b>" + name + "</b>");
	}else if(name.equals("hong")){
		out.print("<i>" + name + "</i>");
	}else{
		out.print("<h3>" + name + "</h3>");
	}
	out.print("<hr>"); 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL_JSTL변환하기 Quiz</title>
</head>
<body>
	<h3>EL & JSTL 바꾸어서 처리 (choose)</h3>
<!-- 내 답 1. if 걸기-->
	<c:if test="${param.name=='kglim'}">
		<b>${param.name}</b>
	</c:if>
	<c:if test="${param.name=='hong'}">
		<i>${param.name}</i>
	</c:if>
	<c:if test="${param.name!='hong'&&param.name!='kglim'}">
		<h3>${param.name}</h3>
	</c:if>
	<hr>
<!-- 내 답 2. choose걸기-->	
	<c:choose> <!-- eq == // ne != -->
	<c:when test="${param.name eq 'kglim'}"><b>${param.name}</b></c:when>
	<c:when test="${param.name=='hong'}"><i>${param.name}</i></c:when>
	<c:otherwise><h3>${param.name}</h3></c:otherwise>	
	</c:choose>
	<hr>
</body>
</html>