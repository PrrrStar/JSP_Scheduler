<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
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

input, select, textarea {
	width: 99%;
	font-size: 120%;
}

.write_btn {
	width:40%;
	border: 0;
	outline: 0;
	margin:5px;
	font-size: 120%;
	color: white;
	background-color: transparent;
}

.write_btn:hover {
	cursor: pointer;
	color: black;
}
</style>

</head>
<body>

	<form method="post" action="<%=request.getContextPath()%>/writeOK.do">
		<input type="hidden" name="year" value="${YEAR }"> <input
			type="hidden" name="month" value="${MONTH }"> <input
			type="hidden" name="day" value="${DAY }">

		<table>
			<thead>

				<tr>
					<th colspan="5">${MONTH }월${DAY }일예약</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>학생이름</td>
					<td colspan="2"><input name="upload_name" type="text" /></td>
				</tr>
				<tr>
					<td>수강과목</td>
					<td colspan="2"><input name="upload_class" type="text" /></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td colspan="2"><input name="upload_tel" type="text" /></td>
				</tr>
				<tr>
					<td rowspan="2">보충시간</td>
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
							<option value="18:30">18:30</option>
							<option value="19:00">19:00</option>

					</select></td>
				</tr>
				<tr>
					<td colspan="3">내용</td>
				</tr>
				<tr>
					<td colspan="3"><textarea name="upload_comment"
							style="height: 300px"></textarea></td>
				</tr>
				<tr>
					<td>담당멘토</td>
					<td colspan="2"><input name="upload_writer" type="text" /></td>
				</tr>

				<tr>
					<td>비밀번호</td>
					<td colspan="2"><input name="upload_pwd" type="password" /></td>

				</tr>
				<tr>

					<td colspan="3" align="center">&nbsp;&nbsp; <input
						class="write_btn" type="submit" value="예약추가">&nbsp;&nbsp;<input
						class="write_btn" type="button" value="취소"
						onClick="history.back()"></td>
				</tr>
			</tbody>
		</table>
	</form>

</body>
</html>
