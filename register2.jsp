
<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd,lat,lon;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

city=request.getParameter("city").trim();
state=request.getParameter("state").trim();
 zip=request.getParameter("zip");
 lon=request.getParameter("lon");
 lat=request.getParameter("lat");
 email=request.getParameter("email");


%>
<%




int q= st.executeUpdate("update register set city='"+city+"', state='"+state+"', zip='"+zip+"', lat='"+lat+"' , lon='"+lon+"' where email='"+email+"' ");

if(q>0)
{
//	response.sendRedirect("profilepic.jsp?id="+email+"");
	response.sendRedirect("signup.jsp?message=succ");
}
else
	response.sendRedirect("useradd.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>


