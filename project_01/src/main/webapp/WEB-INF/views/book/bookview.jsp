<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>

<table width="850" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>책이름</td>
		<td>한줄느낀점</td>
		<td>작성일</td>
	<tr>
	<c:forEach items="${bookview}" var="dto">
	<tr>
		<td>${dto.bname}</td>
		<td>${dto.bcontent}</td>
		<td>${dto.join_date}</td>
		
	<tr>
	<a href="bookdelete?bname=${dto.bname}">삭제</a> <br/>
	<a href="bookmodify_form?bname=${dto.bname}">수정하러가기</a>
	</c:forEach>

</table>




</body>
</html>