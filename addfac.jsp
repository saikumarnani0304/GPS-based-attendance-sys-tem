
<%@ include file="aheader.jsp"%>
	                  <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("suc"))
                                                       {
                                                               out.println("&nbsp;&nbsp;<font color='red'><blink><h3>Faculty Data Added Successfully !</blink></font></h3>");
                                                       }
			    %>


<form method="post" action="addfac2.jsp">
	
	<strong><h3>Add Faculty</h2></strong>
<table cellspacing="10"  >
		<tr><td><font size="5" color="#fffff">Faculty Name</font><td><input type="text" name="name" size="30" required>
			<tr><td><font size="5" color="#fffff">Designation</font><td><input type="text" name="des" size="30" required>
				<tr><td><font size="5" color="#fffff">Qulification</font><td><select name="qua">
					<option value="btech" selected>B.Tech
					<option value="mtech">M.Tech
										<option value="phd">PHD

				</select>
					<tr><td><font size="5" color="#fffff">Faculty Contact</font><td><input type="text" name="con" size="30" required>
					<tr><td><font size="5" color="#fffff">Faculty Email</font><td><input type="text" name="email" size="30" required>
				
				
				<tr><td><font size="5" color="#fffff">Login Password</font><td><input type="password" name="pwd" size="30" required>
								<tr><td><font size="5" color="#fffff">Branch</font><td>	<select name="branch" >
					<option value="CSE" selected>CSE
					<option value="ECE">ECE
				</select>
									
								<tr><td><input type="submit" value="Submit">
</table>


</form>
<br><br><br><br><br><br>