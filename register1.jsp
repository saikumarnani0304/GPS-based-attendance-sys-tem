
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>



<%! String name, lname, addr, city, state, zip, tele,roll, email, un, pwd,branch;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from register");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");
roll=request.getParameter("roll");
lname=request.getParameter("lname");
addr=request.getParameter("addr");


tele=request.getParameter("tele");
 email=request.getParameter("email");
pwd=request.getParameter("pwd");
branch=request.getParameter("branch");
//System.out.println(pwd);
%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
un="user"+i;

int q= st.executeUpdate("insert into register(name,lname,address,phone,email,pwd, branch,roll) values('"+name+"','"+lname+"','"+addr+"','"+tele+"','"+email+"', '"+pwd+"', '"+branch+"', '"+roll+"')");


if(q>0)
{

response.sendRedirect("signup.jsp?message="+email+"");
//response.sendRedirect("profilepic.jsp?id="+email+"");


}
else
	response.sendRedirect("signup.jsp?message=fail");

}
catch(Exception e)
{
	out.println("Duplicate Data");
e.printStackTrace();
	}
%>
