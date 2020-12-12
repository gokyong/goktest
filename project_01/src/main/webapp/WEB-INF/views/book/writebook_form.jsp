<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
작성페이지 <br/>

<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="writebook" method="post">
			<tr>
				<td > 책이름 </td>
				<td> <input type="text" name="Bname" size = "50" > </td>
			</tr>
			<tr>
				<td> 한줄평 </td>
				<td> <input type="text" name="Bcontent" size = "150" > </td>
			</tr>
			<tr>
				<td> 저자 </td>
				<td> <input type="text" name="Bwriter" size = "150" > </td>
			</tr>
			<tr>
				<td> 출판사 </td>
				<td> <input type="text" name="Bcompany" size = "150" > </td>
			</tr>
			<tr>
				<td colspan="2"> <input type="submit" value="입력"> 작성완료 <br> <a href="booklist">북리스트이동</a></td>
			</tr>
		</form>
</table>
</body>
</html>	