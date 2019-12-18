<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>사용자 보기</title>
</head>
<body>
	<h1>사용자 보기</h1>
	<form name="frm" action="mupdate" method="post">
		<table border=1 width=300>
			<tr>
				<td width=110>아이디</td>
				<td><input type="text" name="userid" value="${vo.userid}"></td>
			</tr>
			<tr>
				<td width=110>비밀번호</td>
				<td><input type="password" name="userpw" value="${vo.userpw}"></td>
			</tr>
			<tr>
				<td width=110>이름</td>
				<td><input type="text" name="username" value="${vo.username}"></td>
			</tr>
			<tr>
				<td width=110>이메일</td>
				<td><input type="text" name="email" value="${vo.email}"></td>
			</tr>
		</table>
		<input type="submit" value="수정">
		<input type="reset" value="취소">
		<input type="button" value="삭제" onClick="funDelete()">
		<input type="button" value="목록" onClick="location.href='mlist'">
	</form>
</body>
<script>
	function funDelete(){
		if(confirm("삭제하시겠습니까?")){
			frm.action="mdelete";
			frm.method="post";
			frm.submit();
		}
	}

</script>
</html>