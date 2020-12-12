<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="850" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>책이름</td>
		<td>저자</td>
		<td>출판사</td>
		<td>작성일</td>
	<tr>
	<c:forEach items="${booklist}" var="dto">
	<tr>
		<td><a href="bookview?bname=${dto.bname}">${dto.bname}</a></td>
		<td>${dto.bwriter}</td>
		<td>${dto.bcompany}</td>
		<td>${dto.join_date}</td>
		
	<tr>
	</c:forEach>
</table>
<p><a href="writebook_form">느낌작성</a></p>
<p><a href="menu">메뉴</a></p>

</body>
</html>