<%@include file="fheader.jsp"%>
 

<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*"%>

<%



String email=request.getParameter("email");
String branch=(String)session.getAttribute("branch");


Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from attendance where branch='"+branch+"' order by date_");

%>
<center>

<table id="tab"  width="60%"><tr><td>Date<td>Roll Number<td>Present
<%
while(rs.next()){
 %>
 <tr><td><font size="" color="#ff3300"><%=rs.getString("date_")%><td><font size="" color="#ff3300"><%=rs.getString("email")%></font><td><font size="" color="#ff3300">Present
 <%
}
%>
</table>


<%@include file="footer.jsp"%>