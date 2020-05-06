
package com.java;

import java.sql.*;
import java.io.*;

public class ConnectionProvider {
    static Connection con;
  
    public static Connection getConnection(){
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/i injection","root","root");
       
        }catch(Exception e){
            e.printStackTrace();
        }
       return con; 
    }
    
}
