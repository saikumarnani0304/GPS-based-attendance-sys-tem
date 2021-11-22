<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%
String pass=null,uid=null;

String a = request.getParameter("uid");
String b= request.getParameter("pass");
String name=null,u=null,year=null,set=null,sem=null;



try
{
	
	Connection con1 = databasecon.getconnection();

	Statement st1 = con1.createStatement();
	
	String sss1 = "select * from faculty where femail='"+a+"' && fpwd='"+b+"'";

	System.out.println(sss1);
	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{
		
		session.setAttribute("fac",a);
	session.setAttribute("branch",rs1.getString("branch"));
	response.sendRedirect("fac_home.jsp");
	}

	else
			{
     	response.sendRedirect("faculty.jsp?message=fail");
	}



}
catch(Exception e1)
{
System.out.println(e1);
}

%>
	
	

