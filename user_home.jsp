<%@include file="uheader.jsp"%>
<%@page import="java.sql.*,java.util.*,java.text.*"%>
<%@page import="databaseconnection.*"%>
<%!String uname,email,phno,mobile,branch,longitude=null;%>
<%

		String user=session.getAttribute("user").toString();


		String name=session.getAttribute("name").toString();

try
		 {
	 	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from register where roll='"+user+"' ");
        if(rs.next())
        {

		uname = rs.getString(2);
		
		mobile = rs.getString("phone");
	branch = rs.getString("branch");
	
			}
		 }
    catch(Exception e)
    {
        System.out.println("Error in loginaction"+e.getMessage());
    }
%>

<h1 align="left"><a href=""><font size="" color="#ffffcc">Welcome..</font></a></h1>


<table align="right">
	<tr>
		<td><h1><a href=""><font size="" color="#ffffcc">Student Details</font></a></h1>
		<tr><td><font  color="" width="300"><%=uname%></font></td>
		<tr><td><font  color="">Email: <%=user%></font></td>
				<!-- <tr><td><font size="+2" color="">Ph no: <%=phno%></font></td> -->
								<tr><td><font color="">Mobile no: <%=mobile%></font></td>
									<tr><td><font color="">Branch: <%=branch%></font></td>
	</tr>

</table>



<br><br><br><br><br><br>
<br><br><br><br><br><br>
<br><br><br><br><br><br>

<%@include file="footer.jsp"%>