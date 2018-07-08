package CT;

import java.io.*;

import java.util.*;

import org.jfree.chart.ChartUtilities;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset;

public class PieChart {
   
   public static void main( String[ ] args ) throws Exception {


   }


public static void main( DefaultPieDataset dataset) throws Exception {
    

      JFreeChart chart = ChartFactory.createPieChart(
         "Distribution of workers",   // chart title
         dataset,          // data
         true,             // include legend
         true,
         false);
         
      int width = 840;   /* Width of the image */
      int height = 680;  /* Height of the image */ 
      File pieChart = new File( "E://Apache Tomcat/webapps/NoSql/PieChart.jpeg" ); 
      ChartUtilities.saveChartAsJPEG( pieChart , chart , width , height );
   }

}