<%@include file="fheader.jsp"%>
 

<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*"%>

<%



String email=request.getParameter("email");

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from attendance where email='"+email+"' order by date_");

%>
<center>

<table id="tab"  width="60%"><tr><td>Date<td>Present
<%
while(rs.next()){
 %>
 <tr><td>
 <font size="" color="#ff3300"><%=rs.getString("date_")%></font><td><font size="" color="#ff3300">Present
 <%
}
%>
</table>


<%@include file="footer.jsp"%>