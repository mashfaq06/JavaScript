<%@ include file="uheader.jsp"%>
<%@ page import="org.jsoup.nodes.Element" import="java.sql.*" import="databaseconnection.*"  import="bing.*" import="java.io.*" import="java.util.Vector"%>

<head>
<style>
table, th, td {
  border: 1px solid black;
}
th, td {
    padding: 15px;
    text-align: left;
}
</style>
</head>

  <%

%>


<%
String 	key=request.getParameter("search");

					File f=null;
					FileReader fr=null;
					BufferedReader br=null;
										String s=null;
Vector v=new Vector();
v=BingSearch.main(key);
	
%><form method="post" action="doc2.jsp">
	
<br>
<h1> <font size="" color="">Search Results..</font></h2>
<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
Statement st = con1.createStatement();
ResultSet rs=st.executeQuery("select * from temp");
		%>
		
		<table cellspacing="10">
<%	
int c=0;
while(rs.next())
			{
					c++;
						%>
			
			<tr>
			<td><input type="checkbox" name="links" value="<%=rs.getString(1)%>"><td><a href="http://<%=rs.getString(1)%>" target="_blank"><font size="+1" color="#57c2e6"><%=rs.getString(1)%></a></font>
			<tr><td><td><font size="+1" color=""><%=rs.getString(2)%></font>
			<tr><td>
	
		<%		
		}
c++;
%><input type="hidden" name="tot" value="<%=c%>">
<input type="hidden" name="key" value="<%=key%>">
<tr><td><input type="submit" value="next">
</table>

</form>

<%@ include file="footer.jsp"%>
