
package CT;
import java.io.*;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.chart.ChartUtilities;

public class BarChart {
   
   public static void main(DefaultCategoryDataset dataset  )throws Exception {
    
      JFreeChart barChart = ChartFactory.createBarChart(
         "Search Results", 
         "", "Score", 
         dataset,PlotOrientation.VERTICAL, 
         true, true, false);
         
      int width = 780;    /* Width of the image */
      int height = 560;   /* Height of the image */ 

//C:/Users/mahmood/Documents
	  File BarChart = new File( "C://Users/mahmood/Documents/Apache Tomcat/webapps/DynamicCrawler/BarChart.jpeg" ); 
      ChartUtilities.saveChartAsJPEG( BarChart , barChart , width , height );
   }
}