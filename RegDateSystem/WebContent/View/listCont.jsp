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
<title>Insert title here</title>
<style type="text/css">
.listCont_table {
	border: 1px solid white;
	text-align: center;
	width: 100%;
	height: auto;
	font-size: 130%;
	padding: 15px;
	color: white;
}

.list_head_tr td {
	border-top: 1px solid white;
	border-bottom: 1px solid white;
}

.list_body_tr td {
	margin-top: 10px;
	height: 10px;
}

.add_btn {
	float: right;
	border: 0;
	outline: 0;
	font-size: 130%;
	color: white;
	background-color: transparent;
}

.add_btn:hover {
	cursor: pointer;
	color: black;
}

.list_body_tr:hover {
	cursor: pointer;
	background: #474747;
}
</style>
<script src="jquery-1.11.3.js"></script>
</head>

<body>
	<form method="post" action="<%=request.getContextPath()%>/calendar.jsp">

		<input type="hidden" name="year" value="${YEAR }"> <input
			type="hidden" name="month" value="${MONTH }"> <input
			type="hidden" name="day" value="${DAY }">
		<table class="listCont_table">
			<thead>
				<tr>
					<td colspan="3">${MONTH }월${DAY }일예약</td>

				</tr>
			</thead>


			<tr class="list_head_tr">
				<td width="25%">이름</td>
				<td width="40%">시간</td>
				<td width="35%">과목</td>

			</tr>

			<c:forEach items="${Upload }" var="i">

				<input type="hidden" name="upload_no" value="${i.getUpload_no() }">


				<tr class="list_body_tr"
					onclick="location.href='<%=request.getContextPath() %>/more.do?no=${i.getUpload_no() }'">

					<td>${i.getUpload_name() }</td>
					<td>${i.getUpload_start_time() }~ ${i.getUpload_end_time() }</td>
					<td>${i.getUpload_class() }</td>

				</tr>
			</c:forEach>

		</table>
		<input type="button" class="add_btn" value="예약추가"
			onclick="location.href='<%=request.getContextPath() %>/write.do?year=${YEAR }&month=${MONTH }&day=${DAY }'" />

	</form>


</body>
</html>