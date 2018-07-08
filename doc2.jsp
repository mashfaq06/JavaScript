<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*" import="databaseconnection.*"  import="bing.*" import="java.io.*" import="java.util.*" import="Crawl.*" import="CT.*"%>
<%@ page  import="org.jfree.data.general.DefaultPieDataset" %>

<%@ page  import="org.jfree.data.category.DefaultCategoryDataset" %>

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
<h2>Search Results</h2>

<%
      DefaultCategoryDataset dataset = new DefaultCategoryDataset( );

double 	totdoc=Double.parseDouble(request.getParameter("tot"));
String 	key=request.getParameter("key");

String[] links=request.getParameterValues("links");
double rel=links.length;
Map<Double, String> hm = 
      new TreeMap<Double, String>(Collections.reverseOrder());
%>

<%
String words[]=key.split("\\s+");
int count=0;
String link="";
for (String lk : links) {
	count=0;
	try{
	link = CrawlText.main("http://"+lk);
	}
	catch(Exception er){
	System.out.println(er);
	}

	if(words.length>1)
	{
		for(String ex:words)
		{
			count=count+CountWords.main(link,ex);
		}
	}
	else
	{
			count=count+CountWords.main(link,key);
	}

//	System.out.println(count);

// TFIDF=    no of freq/ tot words  * Log (Total url's/relavant URLs)

	//ran = r.nextInt(10);
	//count=count+ran;	
	
	
	double	tot=link.split("\\s+").length;
	
	double tf=count/tot;
	double idf=Math.log(totdoc/rel);
	double tfidf=tf*idf;
	System.out.print(tf+"		"+idf+"		"+tfidf);
	System.out.println();


	hm.put(tfidf,lk);

	      dataset.addValue(tfidf, "Score" , lk);

	
	}
	
	

%>


<table><tr><td>Sno<td>URL<td>Tf-Idf Score

<%
	 Set set = hm.entrySet();
	Iterator i = set.iterator();
    // Display elements
	int sno=0;
	//for(int ii=0;ii<10;ii++){
	while(i.hasNext()) {
    Map.Entry me = (Map.Entry)i.next();
       %>
		<tr><td ><h5><%=++sno%><td><h5> <a href="http://<%=me.getValue()%>" target="_blank"><%=me.getValue()%></a>
    <td align="center"><h5>
		<%
	   out.println(me.getKey()); %>


		<%	
		
		}

BarChart.main(dataset);

%>
</table>
<br><br>

<a href="#" onclick="window.open('view.jsp', 'newwindow', 'width=850, height=650'); return false;"><h3>View</h3> </a> 

<%@ include file="footer.jsp"%>
