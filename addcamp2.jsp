<%@include file="aheader.jsp"%>
<%@page import="java.sql.*,java.util.*,java.text.*"%>
<%@page import="databaseconnection.*"%>
<html>
<head>
<title></title>

</head>

<body>
<%
String dname= request.getParameter("dname");
String latitude=request.getParameter("latitude");
String longitude=request.getParameter("longitude");

//
//DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//Calendar cal = Calendar.getInstance();
//System.out.println("Current Date and Time:"+dateFormat.format(cal.getTime())); //2014/08/06 16:00:22
 //tstamp=email11+dateFormat.format(cal.getTime());
try
{
ResultSet rs=null;
int id=0;
int i=0;
String ngoid=null;

Connection con=databasecon.getconnection();
	
PreparedStatement ps=con.prepareStatement("insert into department values(?,?,?)");
ps.setString(1,dname);
ps.setString(2,latitude);
ps.setString(3,longitude);
ps.executeUpdate();

response.sendRedirect("addcamp.jsp?m=succ");
//out.print("USER REGISTERED SUCCESSFULLY");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
</body>
</html>


<%@ include file="footer.jsp"%>