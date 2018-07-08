<%@ include file="header.jsp"%>
<%
//session.invalidate();%>

  <%
    String mm=request.getParameter("id");
  if(mm!=null && mm.equalsIgnoreCase("exp"))
    {
     out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
     }
%>

<br><br><br>
<h1>Login Page for User</h1></font>



					
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<table><tr><td><font  color='red'><blink><br><br><h4>Login Fail   !! </blink></font></h3></table>");
                                                       }
                                               %>
											   

						<div class="form-group">
<form method="post" action="ulogin.jsp">
	<table align=right  width="35%" cellspacing=20 ><tr><td>
<tr><td><h2>User Login..
	<tr><td><input   type="text" name="uid"   class="form-control input-lg" required   placeholder="UserId"><br>
		<tr><td><input   type="password" name="pwd" required     class="form-control input-lg" placeholder="Password">

			<tr><td><br>			<div class="form-group">
				<input type="submit" class="btn btn-primary btn-lg " value="Login">
			</div>	

</tr>
</table>
</div>


<br><br><br>
<%@ include file="footer.jsp"%>