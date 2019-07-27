<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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

td {
	border: 1px solid white;
}

tr>td:first-of-type {
	width: 30%;
}

tr>td:nth-of-type(2) {
	width: 70%;
}

#title {
	background-color: white;
}

textarea{
	width: 99%;
}
.more_btn {
	width:auto;
	border: 0;
	outline: 0;
	margin-top:5px;
	margin-bottom:5px;
	margin-left:10px;
	margin-right:10px;
	
	font-size: 120%;
	color: white;
	background-color: transparent;
}

.more_btn:hover {
	cursor: pointer;
	color: black;
}
</style>
</head>
<body>
	<form method="post" action="<%=request.getContextPath()%>/editPass.do">

		<!-- <form method="post"> -->
		<c:set var="vo" value="${VO }">
		</c:set>
		<input type="hidden" name="upload_no" value="${vo.getUpload_no() }">
		<input type='hidden' name="ryear" value="${vo.getRyear() }"> <input
			type='hidden' name="rmonth" value="${vo.getRmonth() }"> <input
			type='hidden' name="rday" value="${vo.getRday() }"> <input
			type='hidden' name="upload_pwd" value="${vo.getUpload_pwd() }">

		<table>
			<thead>
				<tr>
					<th colspan="4">${vo.getRmonth() }월${vo.getRday() }일예약</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>학생이름</td>
					<td colspan="2">${vo.getUpload_name() }</td>
				</tr>
				<tr>
					<td>수강과목</td>
					<td colspan="2">${vo.getUpload_class() }</td>
				</tr>
				<tr>
					<td colspan="2">보충시간</td>
					<td>${vo.getUpload_start_time() }~${vo.getUpload_end_time() }</td>
				</tr>

				<tr>
					<td colspan="3">내용</td>
				</tr>
				<tr>
					<td colspan="4" style="height: 300px;">${vo.getUpload_comment() }</td>
				</tr>

				<tr>
					<td>담당멘토</td>
					<td colspan="2">${vo.getUpload_writer() }</td>
				</tr>

				<tr>
					<td colspan="3">&nbsp;&nbsp; <input class="more_btn" type="submit" value="예약 수정"
						onclick="location.href='<%=request.getContextPath()%>/editPass.do'">

						<input class="more_btn" type="button" value="목록"
						onClick="location.href='<%=request.getContextPath()%>/listCont.do?year=${vo.getRyear() }&month=${vo.getRmonth() }&day=${vo.getRday() }'">
						<input class="more_btn" type="button" value="예약 삭제"
						onclick="location.href='<%=request.getContextPath()%>/cancel.do?no=${vo.getUpload_no() }'">
					</td>
				</tr>

			</tbody>

		</table>

	</form>
</body>
</html>