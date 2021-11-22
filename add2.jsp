
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>



<%
String email=(String)session.getAttribute("email");
%>
<%
try{


Connection con = databasecon.getconnection();
Statement st=con.createStatement();
int q= st.executeUpdate("insert into attendance values ('"+email+"','"+email+"' ) ");
   
if(q>0)
{

response.sendRedirect("add.jsp?id=succ");

}
else
	response.sendRedirect("add.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
