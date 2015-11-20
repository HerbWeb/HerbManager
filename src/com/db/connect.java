package com.db;
import java.sql.*;


public class connect {
	    private String user;
	    private String pwd;
	    private String url;
	    private String driver;
	    private Connection dbConn;
	    
	    public connect(){
	        this.user = "root";
	        this.pwd = "";
	        this.url = "jdbc:mysql://localhost:3306/HerbDB";
	        this.driver = "org.gjt.mm.mysql.Driver"; 
	    }
	    
	    public Connection getConn(){
	          try {
	          Class.forName(driver);
	          this.dbConn = DriverManager.getConnection(url, user, pwd);
	          } catch (Exception e) {
	          e.printStackTrace();
	          }
	          return this.dbConn;
	    }
	    
	    public void closeConn(){
	        if(dbConn != null)
	        try {
	        dbConn.close();
	        } catch(Exception e){
	        e.printStackTrace();
	        }
	        dbConn = null;
	    }
}