<%@ include file="header.jsp"%>
<% if(request.getParameter("message")!=null){
out.println("<script>alert('Incorrect username/password.....!')</script>");
}

%>
	<br><br><br>

 </table> 

<form name="s" action="flogin.jsp" method="get" onsubmit="return valid()">


			  <h2><font size="" color="red" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Faculty Login..</font></h2>




<table  width="40%"  align="right">         

			  <tr>
                <td><font size="5" ><b>User Name</strong></font></td>
                <td><input type="text" name="uid"></td> 
              </tr>
              <tr> 
                <td><font size="5" color=""><b>Password</font></strong></font></td>
                <td><input type="password" name="pass" ></td>
              </tr>
              <tr> 
                              
               


                <td>			          <div class="one_third">
	<div class="form_settings"><input type="submit" name="s" value="  LOGIN  " class="b1" > </div>
                 
                  <td><div class="form_settings"><input type="reset" name="r" value="  CLEAR  " class="b1"></td>
              </tr>
			  			  <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  <%
                         String message=request.getParameter("message");
                          if(message!=null && message.equalsIgnoreCase("fail"))
                               {
                                 out.println("&nbsp;&nbsp;<font color='red'><blink>Your username and password is incorrect !</blink></font>");
                               }
			    %>
                  </b></font></td>
              </tr>

			   </table> 

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 </form>
<%@ include file="footer.jsp"%>