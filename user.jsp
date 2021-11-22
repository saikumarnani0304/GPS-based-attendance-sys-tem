<%@ include file="header.jsp"%>

<br>
<font size="+3" color="#6666ff"><h1>Login Page for Student</h1></font>

<b>

			
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
			




      <div id="comments">
<form method="post" action="ulogin.jsp">

	

	<tr><td>
	          <div class="one_third">
		<input type="text" name="uid" required placeholder="Enter Roll No."  size="30"></div>
		<tr><td>
	          <div class="one_third">
		<input type="password" name="pwd" required placeholder="Password" size="30"><br></div>

			<tr><td>	        
			<div class="form_settings"><input class="submit" type="submit"  value="Login" >
			</div>
				<tr><td>	<a href="signup.jsp">New User</a>

</form>

</tr>
</table>						

</div>
											   



<br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>