<%@ include file="header.jsp"%>



						<div class="form-group">
<form method="post" action="alogin.jsp">
	<table align=right  width="35%" cellspacing=20 ><tr><td>
<tr><td><h2>Admin Login..
	<tr><td><input   type="text" name="uid"   class="form-control input-lg" required   placeholder="UserId"><br>
		<tr><td><input   type="password" name="pwd" required     class="form-control input-lg" placeholder="Password">

			<tr><td><br>			<div class="form-group">
				<input type="submit" class="btn btn-primary btn-lg " value="Login">
			</div>	

</tr>
</table>
</div>
					<table align=right cellspacing=20 ><tr><td><td>
	                  <%
                                                       String m=request.getParameter("m");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>

</form>



<%@ include file="footer.jsp"%>