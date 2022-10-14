package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connessione {
  private static Connection conn = null;
  
  public static final String DB_DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
  
  public static final String DB_URL = "jdbc:mysql://localhost:3306/candidature";
  
  public static final String DB_USERNAME = "root";
  
  public static final String DB_PASSWORD = "";
  
  static {
    try {
      Class.forName(DB_DRIVER_CLASS);
      conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
      
    } catch (ClassNotFoundException e) {
      System.out.println("Classe non trovata");
      
    } catch (SQLException e) {
      System.out.println("Errore di connessione");
    } 
  }
  
  public static Connection getConnessione() {
    return conn;
  }
}
