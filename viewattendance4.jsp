<%@include file="fheader.jsp"%>
 

<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*"%>

<%



String email=request.getParameter("email");
String from=request.getParameter("start");
String[] d=from.split("-");
from=d[0]+"-"+d[1]+"-"+d[2];
String branch=(String)session.getAttribute("branch");

		Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String s="select * from attendance  where date_>'"+from+"' and branch='"+branch+"' order by date_";
		System.out.println(s);

ResultSet rs=st.executeQuery(s);


%>
<center>

<table id="tab"  width="60%"><tr><td>Date<td>Roll<td>Present
<%
while(rs.next()){
 %>
 <tr><td>
 <font size="" color="#ff3300"><%=rs.getString("date_")%></font>
 <td>
 <font size="" color="#ff3300"><%=rs.getString("email")%></font>
 <td><font size="" color="#ff3300">Present
 <%
}
%>
</table>


<%@include file="footer.jsp"%>