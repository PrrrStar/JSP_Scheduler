<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.RegDate.Model.UploadVO"%>
<%@ page import="com.RegDate.Model.UploadDAO"%>
<%@ page
	import="com.RegDate.Action.Month, java.util.*,java.text.*,java.io.*,java.sql.*,com.RegDate.*"
	errorPage="error.jsp"%>

<%@ include file="calendarCommon.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<link rel="StyleSheet" href="calendar.css" type="text/css"
	media="screen" />
<script type="text/javascript" src="clock.js"></script>
<script type="text/javascript" src="cal.js"></script>

<body onLoad="today_focus();" style="background:#222222;">
	<div class="main_div">
		<div class="header">
			<div id="clock" style="font-size:250%; font-weight:bold;">
				<script>
				clock();
			</script>

			</div>

		</div>
		<hr>
		<div class="calendar_main_div">

			<table id="calendar_table">
				<thead class="month_year_header">
					<tr>
						<form method="post">
							<input type="submit" class="nav_btn" name="PREV" value=" << ">
							<input type="hidden" name="month" value="<%=prevMonth%>">
							<input type="hidden" name="year" value="<%=prevYear%>">
						</form>

						<font class="title_year"> <%=intYear%>년 <%=monthName%>월
						</font>
						<form method="post">
							<input type="submit" class="nav_btn" name="NEXT" value=" >> ">
							<input type="hidden" name="month" value="<%=nextMonth%>">
							<input type="hidden" name="year" value="<%=nextYear%>">
						</form>
					</tr>
				</thead>
				<tr class="week_header_row">
					<td>Sun</td>
					<td>Mon</td>
					<td>Tue</td>
					<td>Wed</td>
					<td>Thu</td>
					<td>Fri</td>
					<td>Sat</td>
				</tr>
				<%
					{
						Month aMonth = Month.getMonth(Integer.parseInt(currentMonthString),
								Integer.parseInt(currentYearString));
						int[][] days = aMonth.getDays();
						for (int i = 0; i < aMonth.getNumberOfWeeks(); i++) {
				%>


				<tr class="week_data_row">
					<%
						for (int j = 0; j < 7; j++) {
									if (days[i][j] == 0) {
					%><td class="empty_day_cell">&nbsp;</td>
					<%
						} else {
										if (currentDayInt == days[i][j] && currentMonthInt == aMonth.getMonth()
												&& currentYearInt == aMonth.getYear()) {
					%>
					<td class="today_cell" id="<%=days[i][j]%>"
						style="border: 3px solid white;"
						onclick="daily_cont(<%=intYear%>,<%=monthName%>,<%=days[i][j]%>);">
						<%=days[i][j]%>
					</td>
					<%
						} else {
					%>
					<td class="day_cell" id="<%=days[i][j]%>"
						onclick="daily_cont(<%=intYear%>,<%=monthName%>,<%=days[i][j]%>);">
						<%=days[i][j]%>
					</td>

					<%
						}
									} // end outer if
								} // end for
					%>
				</tr>
				<%
					}
					}
				%>
			</table>

			<%-- end of "calendar_div" --%>
		</div>

		<div class="daily_main_div">

			<div class="iFrame_div">
				<iframe id="popUp_iF" src=""> </iframe>
			</div>
		</div>
	</div>


</body>
</html>