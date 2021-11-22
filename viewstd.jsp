<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="CT.*"%>

<%@ include file="aheader.jsp"%>



										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>You Entered String is dupicate</blink></font>");
                                                       }
                                               %>



<h1>View Students..</h1><br><br>

<%
Connection con1 = databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	Statement st2 = con1.createStatement();

	st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from register");
	

%>	

<table border width="100%" cellspacing="10" id="tab">
<tr><th>Sno<th>Roll Number<th>Name<th>Email<th>Contact<th>Branch<th>Delete 
<%int c=1;

while(rs.next())
	{
		%>
	<tr><th width="7%"> <font size="4" color=""><%=c++%>
	
		<td ><strong><font size="4" color="#a4a4a4"><%=rs.getString("roll")%></strong>
		<td ><strong><font size="4" color="#a4a4a4"><%=rs.getString("email")%></strong>
		<td ><strong><font size="4" color="#a4a4a4"><%=rs.getString("email")%></strong>
			<td ><strong><font size="4" color="#a4a4a4"><%=rs.getString(4)%></strong>
				<td ><strong><font size="4" color="#a4a4a4"><%=rs.getString("branch")%></strong>
					<td ><strong><font size="4" color="#a4a4a4"><a href="sdelete.jsp?id=<%=rs.getString("roll")%>">Delete</a></strong>

					
<%
	}
%>	 
</table>

<br><br>

<br><br>
<%@ include file="footer.jsp"%>