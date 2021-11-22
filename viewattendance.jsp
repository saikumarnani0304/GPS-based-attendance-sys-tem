<%@include file="fheader.jsp"%>
<%@page import="java.sql.*,java.util.*,java.text.*"%>

<h1 ><a href=""><font size="+1" color="#ffffcc">Search Student..</font></a></h1>


<form method="post" action="viewattendance2.jsp">


<table id="tab">
<tr><td>
<tr><td>
	<input type="text" name="email" required >
<tr><td>	<input type="submit" value="Search">
</table>
</form>
<br><br><br>
<h1 ><a href=""><font size="+1" color="#ffffcc">View Total Attendance..</font></a></h1>


<form method="post" action="viewattendance3.jsp">


<table id="tab">

<tr><td>	<input type="submit" value="View">
</table>
</form>
<br><br><br>
<h1 ><a href=""><font size="+1" color="#ffffcc">View Total Attendance..</font></a></h1>


<form method="post" action="viewattendance4.jsp">


<table id="tab">


<tr><td>	<h1>From</h1><input type="date" name="start">
<tr><td>	<input type="submit" value="View">
</table>
</form>

<%@include file="footer.jsp"%>