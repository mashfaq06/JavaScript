package bing;

import java.util.Vector;
import java.sql.*;
import java.io.PrintWriter;


import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import databaseconnection.*;
 
public class BingSearch   {
 

     public static Vector ae=new Vector();
    Vector result=new Vector();


  public static Vector main(String args) {
	   Vector result=new Vector();
int  count=0;
	 String key="";

	Document doc;
	try {
 
		// need http protocol
	boolean term=false; 
		//System.out.println("BING SEARCH"+args);
	String[] words=null;
	words=args.split(" ");
//System.out.println("words l = "+words.length);
	for(String s:words)
	{	
		if(term==true)
		{
					key=key+"+";
					key=key+s;
		}else{
			key=key+s;
		term=true;
		}
	}

Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
		st.executeUpdate("delete from temp ");

	String sss1 = null;


		String first="11";
		String urlString = "http://www.bing.com/search?q="
                        + key;
		doc = Jsoup.connect(urlString).get();
//System.out.println(urlString);
		// get page title
		String title = doc.title();
		//System.out.println("title : " + title);
 
		// get all links
		Elements links = doc.select("a[href]");




		for (Element link : links) {
 
			// get the value from href attribute
		String lk=link.attr("href");

		if((lk.contains("http://")||lk.contains("https://"))&&!lk.contains("microsoft")&&!lk.contains("bing")&&!lk.contains("msn"))
			{

			lk=lk.replaceAll("https://","");
			lk=lk.replaceAll("http://","");
			//System.out.println(link.attr("href")+"------"+count++);	;

		try{
			st.executeUpdate("insert into temp values ('"+lk+"','"+link.text()+"')");
		}catch(Exception e){
		
		}


		result.add(lk);
		result.add(link.text());
//result.add("");
			}

 
		}

 
	} catch (Exception e) {
		e.printStackTrace();
	}

return result; 
  }
  	public static void main(String[] args) 
	{


	}

 
}
