<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String pass=null,uid=null;

String a = request.getParameter("name");
String b= request.getParameter("des");
String c= request.getParameter("qua");
String d= request.getParameter("con");
String e= request.getParameter("email");
String branch= request.getParameter("branch");
String g= request.getParameter("pwd");

String name=null,u=null,test2=null;




try
{

	Connection con1 = databasecon.getconnection();

	Statement st1 = con1.createStatement();
	
	String sss1 = " insert into faculty(fname,fdes,fq,fno,femail,branch,fpwd) value('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+branch+"','"+g+"') ";
	st1.executeUpdate(sss1);
		response.sendRedirect("addfac.jsp?m=suc");
}
catch(Exception ee){System.out.println(ee);}
%>


