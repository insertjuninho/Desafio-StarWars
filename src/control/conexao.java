package control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class conexao {

  
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL   = "jdbc:mysql://localhost:3306/b2w";
    private static final String USE   = "root";
    private static final String PASS  = "";
    
    public static Connection getConnection(){ 
        
        try {
            Class.forName(DRIVER);
            return DriverManager.getConnection(URL,USE,PASS);
            
        } catch (ClassNotFoundException | SQLException ex ) {
           throw new RuntimeException("erro na conexão", ex);
        }
    }
    
    public static void CloseConection(Connection con){
            try {
                if (con != null) {
                    con.close();
                
                }
            } catch (SQLException ex) {
                Logger.getLogger(conexao.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
    }
    
 public static void CloseConection(Connection con, PreparedStatement stmt){
        
        CloseConection(con);
        
            try {
                if (stmt != null) {
                    stmt.close();
                
                }
            } catch (SQLException ex) {
                Logger.getLogger(conexao.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
 }
   
    public static void CloseConection(Connection con, PreparedStatement stmt, ResultSet rs){
        
        CloseConection(con, stmt);
        
            try {
                if (rs != null) {
                    rs.close();
                
                }
            } catch (SQLException ex) {
                Logger.getLogger(conexao.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
        }
        
    }
    
	

