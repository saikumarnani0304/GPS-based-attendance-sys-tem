<%@ include file="header.jsp"%>
<script language="javascript"> 
</script>
</head>
<body>
<!--
This is a free CSS template provided by templatemo.com
-->

<br>
<center>
			   <table>
                
    
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  <%
                                                       String id=request.getParameter("message");
                                                       if(id!=null )
                                                       {
                                                               out.println("<font color='red' size=+2><blink>Registration Success ! <br><br>  <a href=user.jsp><h3>Login Here</a><br><br><br></h3>");
                                                       }
													   else {%>
												
                                               <%}%>
                  </b></font></td>
              </tr>

 </table> 
<h2>Register Here</h3></h2>
<center>
 <form action="register1.jsp" method="get"    >

 
             <table align="center" cellpadding="5" cellspacing="5" width="400">
              <tr> 
                <td><font size="+1" color=#fffff><strong>Name</strong>*</font><br>
                <input type="text" name="name" id = "name" onblur = "enableRegisterButton();" style="width: 250px;" required></td>
				<td><font size="+1" color=#fffff><strong>Last Name</strong>*</font><br>
                <input type="text" name="lname" id = "lname" onblur = "enableRegisterButton();" style="width: 250px;" required></td>	
              </tr>
			  </TABLE>


		   	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#fffff><strong>Roll Number</strong>*</font>
				<br>
				<input type="text" name="roll" id="pwd" onblur = "enableRegisterButton();" style="width: 510px;" required	 >
			


				             </tr>
               </table>
			<table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#fffff><strong>Address</strong>*</font>
				<br>
				<input type="text" name="addr" id = "addr" onblur = "enableRegisterButton();" style="width: 510px;"	required >
              </tr>
              <tr> 
               </table>



			<table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#fffff><strong>Branch</strong>*</font>
				<br>
				<select name="branch" style="width: 510px;"	>
					<option value="CSE" selected>CSE
					<option value="ECE">ECE
				</select>
				 
				 </tr>
              <tr> 
               </table>


				 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#fffff><strong>Telephone</strong></font>
				<br>
				<input type="tel"  name="tele" style="width: 250px;"	onkeypress = "return isNumber(this.value);" >
				<td>
				<font size="+1"color=#fffff><strong>Email</strong>*</font>
				<br>
				<input type="email" name="email" id="email" onblur = "return validate(this.value);enableRegisterButton();" style="width: 250px;"	 required>
              </tr>
               </table>


		   	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#fffff><strong>Passwod</strong>*</font>
				<br>
				<input type="password" name="pwd" id="pwd" onblur = "enableRegisterButton();" style="width: 510px;" required	 >
			


				             </tr>
               </table>


			 	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td>
				<input type="submit" Value="Register" id = "register" name = "register" >
				
				<td>
				
				
				<input type="reset" value="   Reset   ">
              </tr>
               </table>
			   <center>
 
 </form> 

<br><br><br><br><br><br><br><br><br>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
       <%@ include file="footer.jsp"%>