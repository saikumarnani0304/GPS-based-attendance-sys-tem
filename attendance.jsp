<%@ page  import="java.sql.*" import="details.*" %>
<%@ include file="uheader.jsp"%>

	
	                  <%
                                                       String message=request.getParameter("id");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("&nbsp;&nbsp;<font color='red' size=5><b>Attendance Submitted successfully..</b></blink></font>");
                                                       }
			    %>

<h1>Student Attendance</h1>
<br><br>
<table>
<form method="post" action="addr.jsp">
	<tr><td><h3>Date:<%=CalendarDate.main()%></h3>

	<tr><td><input type="submit" value="Attendance"></td>

</tr>
</table></strong>
</form>
<br><br><br><br><br><br>