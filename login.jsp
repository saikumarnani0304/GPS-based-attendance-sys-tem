<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%
String pass=null,uid=null;

String a = request.getParameter("uid");
String b= request.getParameter("pass");
String name=null,u=null,test2=null;



try
{
if(a.equals("admin")&&b.equals("admin"))
{
	response.sendRedirect("admin_home.jsp");
	}

	else
	{
     	response.sendRedirect("admin.jsp?message=fail");
	}


}
catch(Exception e1)
{
out.println(e1);
}

%>