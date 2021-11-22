	<%@ include file="uheader.jsp"%>

<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*" import="javax.swing.JOptionPane"%>



<%
String blood=request.getParameter("blood");
String ulat=(String)session.getAttribute("lat");
String ulon=(String)session.getAttribute("lon");
String[] res=null;

String id=null;

%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
st2.executeUpdate("delete from temp");
System.out.println("SELECT * FROM  blood WHERE "+blood+">1 ");
ResultSet rs=st.executeQuery("SELECT * FROM  blood WHERE "+blood+">1 ");
while(rs.next())
{
	id=rs.getString(1);
	res=Details.main(id);
	double d=DistCalc.distance(ulat,ulon,res[3],res[4],"K");
	st2.executeUpdate("insert into temp values('"+id+"','"+res[0]+"','"+res[1]+"','"+res[2]+"','"+res[3]+"','"+res[4]+"','"+res[5]+"','"+rs.getString(blood)+"','"+d+"' )");		
}

%><h3>
<table cellspacing="10">
<tr><td>Camp Id<td>Name<td>Area<td>City<td>State<td>Quantity Avail<td>Dist (KM)
<%
rs=st.executeQuery("SELECT * FROM  temp order by v7");
while(rs.next())
{
%>
<tr><td><%=rs.getString(1)%><td><%=rs.getString(2)%><td><%=rs.getString(7)%><td><%=rs.getString(4)%><td><%=rs.getString(3)%><td><%=rs.getString(8)%><td><%=rs.getString(9)%><td><a href="#" onclick="window.open('view2.jsp?lat=<%=rs.getString("v5")%>&&lon=<%=rs.getString("v6")%>', 'newwindow', 'width=750, height=600'); return false;">ViewLocation</a>
<%}


}
catch(Exception e)
{
e.printStackTrace();
	}


%>
</table>
<br><br><br><br>
	<%@ include file="footer.jsp"%>
