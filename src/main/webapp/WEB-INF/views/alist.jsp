<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>주소목록</title>
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<style>
		.rowh:hover{
			background:darkgray;
			color:white;
		}
		h1{
			text-align:center;
		}
	</style>
</head>
<body>
	<h1>주소목록</h1>
	<table class="table table-borderd">
		<tr>
			<th width=60>아이디</th>
			<th width=100>이름</th>
			<th width=150>전화번호</th>
			<th width=200>주소</th>
		</tr>
		<c:forEach var="vo" items="${list}">
			<tr class="rowh" onClick="location.href='aread?id=${vo.id}'">
				<td width=60>${vo.id}</td>
				<td width=100>${vo.name}</td>
				<td width=150>${vo.tel}</td>
				<td width=200>${vo.address}</td>
			</tr>
		</c:forEach>
	</table>
	<input type="button" value="등록" onClick="location.href='ainsert'" class="btn btn-primary">
</body>
</html>