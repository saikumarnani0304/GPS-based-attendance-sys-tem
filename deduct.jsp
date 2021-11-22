 <%@include file="bcheader.jsp"%>
<%@page import="java.sql.*,java.util.*,java.text.*"%>
<%@page import="databaseconnection.*"%>
<%
                                                       String message=request.getParameter("id");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script type=text/javascript>alert('operation successfull!!')  </script>");
                                                       }
			    %>

<form method="post" action="deduct2.jsp">
	
<table cellspacing="20">
<tr><td><h3>Blood Group<td><h3>Quanitity to Deduct
<tr><td><select name="blood">
	<option value="ap" >A+
	<option value="an">A-
<option value="bp" >B+
	<option value="bn">B-
<option value="op" >O+
	<option value="onn">O-
<option value="abp" >AB+
	<option value="abn">AB-
</select>
<td><input type="number" name="qua" min="1">
<tr><td>	<div class="form_settings"><input type="submit" value="Deduct">
</table>
</form>
<%

%>
<BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>
<%@include file="footer.jsp"%>