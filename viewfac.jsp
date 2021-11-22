<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="CT.*"%>

<%@ include file="aheader.jsp"%>



										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>You Entered String is dupicate</blink></font>");
                                                       }
                                               %>



<h1>View Faculties..</h1><br><br>

<%
Connection con1 = databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	Statement st2 = con1.createStatement();

	st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from faculty");
	

%>	

<table border width="100%" cellspacing="10" id="tab">
<tr><th>Sno<th>Name<th>Email<th>Contact<th>Designation<th>Qualification<th>Delete 
<%int c=1;

while(rs.next())
	{
		%>
	<tr><th width="7%"> <font size="4" color=""><%=c++%>
	
	<td ><strong><font size="4" color="#a4a4a4"><%=rs.getString("fname")%></strong>
		<td ><strong><font size="4" color="#a4a4a4"><%=rs.getString("femail")%></strong>
			<td ><strong><font size="4" color="#a4a4a4"><%=rs.getString(4)%></strong>
				<td ><strong><font size="4" color="#a4a4a4"><%=rs.getString("fdes")%></strong>
					<td ><strong><font size="4" color="#a4a4a4"><%=rs.getString("fq")%></strong>
					<td ><strong><font size="4" color="#a4a4a4"><a href="fdelete.jsp?id=<%=rs.getString("femail")%>">Delete</a></strong>

					
<%
	}
%>	 
</table>

<br><br>

<br><br>
<%@ include file="footer.jsp"%>