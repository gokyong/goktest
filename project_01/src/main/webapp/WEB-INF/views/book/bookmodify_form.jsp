<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>

<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="bookmodify" method="post">
		<c:forEach items="${bookview}" var="dto">
			<tr>
				<td > 책이름 </td>
				<td> <input readonly  name="Bname" value="${dto.bname}"></td>
			</tr>
			<tr>
				<td> 한줄평 </td>
				<td> <input type="text" name="Bcontent" size = "150" value="${dto.bcontent}" > </td>
			</tr>
			<tr>
				<td> 저자 </td>
				<td> <input type="text" name="Bwriter" size = "150" value="${dto.bwriter}"> </td>
			</tr>
			<tr>
				<td> 출판사 </td>
				<td> <input type="text" name="Bcompany" size = "150" value="${dto.bcompany}"> </td>
			</tr>
			
			<tr>
				<td colspan="2"> <input type="submit" value="수정완료">  <br> <a href="booklist">취소 후 리스트</a></td>
			</tr>
		</c:forEach>	
		</form>
</table>

</body>
</html>