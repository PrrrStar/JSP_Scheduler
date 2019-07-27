<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table {
	width: 100%;
	height: auto;
	border: 3px solid white;
	text-align: center;
	color: white;
	font-size: 120%;
}

.editPass_btn {
	width:40%;
	border: 0;
	outline: 0;
	font-size: 110%;
	color: white;
	background-color: transparent;
}
.editPass_btn:hover {
	cursor: pointer;
	color: black;
}
</style>
</head>
<body>

	<div align="center">
		<form method="post"
			action="<%=request.getContextPath()%>/editCheck.do">
			<c:set var="vo" value="${VO }"></c:set>

			<input type="hidden" name="upload_no" value="${vo.getUpload_no() }">
			<input type="hidden" name="db_pwd" value="${vo.getUpload_pwd() }">

			<table border="1" width="350" cellspacing="0">
				<tr>
					<th colspan="2">
						<h3>${vo.getUpload_name() }학생예약수정</h3>
					</th>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="upload_pwd"
						style="width: 99%;"></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input class="editPass_btn"
						type="submit" value="수정">&nbsp;&nbsp;&nbsp; <input
						class="editPass_btn" type="button" value="취소"
						onClick="history.back()"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>





