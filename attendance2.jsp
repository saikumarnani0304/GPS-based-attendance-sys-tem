
<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*"%>



<%


String date=CalendarDate.main();
String email=(String)session.getAttribute("user");
String branch=(String)session.getAttribute("branch");

String lat=request.getParameter("lat");
String lon=request.getParameter("lon");


Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from department where dname='"+branch+"'");
System.out.println("select * from department where dname='"+branch+"'");
String lat2="";
String lon2="";

if(rs.next()){
 lat2=rs.getString("lat");
 lon2=rs.getString("lon");

}
try{

double d=Distance.calc(lat,lon,lat2,lon2,"K");
System.out.println(d);

if(d<40){


int q= st.executeUpdate("insert into attendance values ('"+email+"','"+date+"','"+branch+"' ) ");
response.sendRedirect("attendance.jsp?id=succ");

}

}catch(Exception e){
System.out.println("000000000000000000"+e);

}

response.sendRedirect("attendance.jsp?id=fail");

%>
