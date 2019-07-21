<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>write</title>
<style>
table {
	width: 100%;
	height: auto;
	border: 3px solid white;
	text-align: center;
	color: white;
	font-size: 120%;
}

td {
	border: 1px solid white;
}

#title {
	background-color: white;
}

textarea, select, input {
	width: 99%;
	font-size: 120%;
}

.edit_btn {
	width:40%;
	border: 0;
	outline: 0;
	margin:5px;
	font-size: 120%;
	color: white;
	background-color: transparent;
}

.edit_btn:hover {
	cursor: pointer;
	color: black;
}

</style>


</head>
<body>

	<form method="post" action="<%=request.getContextPath()%>/editOk.do">
		<c:set var="vo" value="${VO }"></c:set>
		<input type="hidden" name="upload_no" value="${vo.getUpload_no() }">
		<input type='hidden' name="ryear" value="${vo.getRyear() }"> <input
			type='hidden' name="rmonth" value="${vo.getRmonth() }"> <input
			type='hidden' name="rday" value="${vo.getRday() }">


		<table>
			<thead>
				<tr>
					<th colspan="5">${vo.getRyear() }년${vo.getRmonth() }월
						${vo.getRday() }일 예약</th>
				</tr>

			</thead>
			<tbody>
				<tr>
					<td>학생이름</td>
					<td colspan="2"><input name="upload_name"
						value="${vo.getUpload_name() }" type="text" /></td>
				</tr>
				<tr>
					<td>수강과목</td>
					<td colspan="2"><input name="upload_class"
						value="${vo.getUpload_class() }" type="text" /></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td colspan="2"><input name="upload_tel"
						value="${vo.getUpload_tel() }" type="text" /></td>
				</tr>
				<tr>
					<th rowspan="2">보충시간</th>
				</tr>
				<tr>
					<td><select name="upload_start_time">
							<option value="">Start</option>
							<option value="11:00">11:00</option>
							<option value="11:30">11:30</option>
							<option value="12:00">12:00</option>
							<option value="12:30">12:30</option>
							<option value="13:00">13:00</option>
							<option value="13:30">13:30</option>
							<option value="14:00">14:00</option>
							<option value="14:30">14:30</option>
							<option value="15:00">15:00</option>
							<option value="15:30">15:30</option>
							<option value="16:00">16:00</option>
							<option value="16:30">16:30</option>
							<option value="17:00">17:00</option>
							<option value="17:30">17:30</option>
							<option value="18:00">18:00</option>
							<option value="18:30">18:30</option>
							<option value="19:00">19:00</option>
					</select></td>
					<td><select name="upload_end_time">
							<option value="">End</option>
							<option value="11:00">11:00</option>
							<option value="11:30">11:30</option>
							<option value="12:00">12:00</option>
							<option value="12:30">12:30</option>
							<option value="13:00">13:00</option>
							<option value="13:30">13:30</option>
							<option value="14:00">14:00</option>
							<option value="14:30">14:30</option>
							<option value="15:00">15:00</option>
							<option value="15:30">15:30</option>
							<option value="16:00">16:00</option>
							<option value="16:30">16:30</option>
							<option value="17:00">17:00</option>
							<option value="17:30">17:30</option>
							<option value="18:00">18:00</option>
							<option value="18:30">17:30</option>
							<option value="19:00">18:00</option>

					</select></td>
				</tr>
				<tr>
					<td colspan="3">내용</td>
				</tr>
				<tr>
					<td colspan="3"><textarea name="upload_comment"
							style="height: 300px">${vo.getUpload_comment() }</textarea></td>
				</tr>
				<tr>
					<td>담당멘토</td>
					<td colspan="2"><input name="upload_writer"
						value="${vo.getUpload_writer() }" type="text" /></td>
				</tr>

				<tr>
					<td>비밀번호</td>
					<td colspan="2"><input name="upload_pwd"
						value="${vo.getUpload_pwd() }" type="password" /></td>

				</tr>

				<tr>
					<td colspan="3" align="center">&nbsp;&nbsp; <input
						class="edit_btn" type="submit" value="수정"> &nbsp;&nbsp; <input
						class="edit_btn" type="button" value="취소" onClick="history.go(-2)"></td>
				</tr>
			</tbody>
		</table>
	</form>

</body>
</html>
