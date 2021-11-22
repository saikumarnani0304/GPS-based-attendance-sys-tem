<%@ include file="bcheader.jsp"%>

<%@ page import="java.sql.*" import="databaseconnection.databasecon"  %>



<h1>Blood Quantity</h1>
 <table cellspacing=20 width=500 >
 <tr><th color=#ffff66><font size="+2" color="">A+ <th><font size="+2" color="">A-<th><font size="+2" color="">B+<th><font size="+2" color="">B-<th><font size="+2" color="">O+<th><font size="+2" color="">O-<th><font size="+2" color="">AB+<th><font size="+2" color="">AB-
<%
String sql="SELECT * FROM blood where id='"+session.getAttribute("trid")+"'";
	
	
	
	
	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	
	ResultSet rs=st1.executeQuery(sql);
	while(rs.next())
	{
	%>


		

	<tr><td align=center><font size="+2" color="#ffff66"><%=rs.getString(2)%><td align=center><font size="+2" color="#ffff66"><%=rs.getString(3)%><td align=center><font size="+2" color="#ffff66"><%=rs.getString(4)%><td align=center><font size="+2" color="#ffff66"><%=rs.getString(5)%><td align=center><font size="+2" color="#ffff66"><%=rs.getString(6)%><td align=center><font size="+2" color="#ffff66"><%=rs.getString(7)%><td align=center><font size="+2" color="#ffff66"><%=rs.getString(8)%>	<td align=center><font size="+2" color="#ffff66"><%=rs.getString(9)%>	
	
		</form>
	<%
	}
%>


</table>








<br><br><br><br>
<%@ include file="footer.jsp"%>