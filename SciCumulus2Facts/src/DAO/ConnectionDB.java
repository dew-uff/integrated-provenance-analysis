/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nwm26
 */
public class ConnectionDB {
    private static Connection conn;
    
    private static Connection createConnection() throws ClassNotFoundException {
        
        if(conn == null){
            try {
                Class.forName("org.postgresql.Driver");
                conn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/scc2", "postgres", "123456");  
            } catch (SQLException e) {
                System.err.println(e.getClass().getName()+": "+e.getMessage());
                System.exit(0);
            }
        }
        return conn;              
    }
    
    public Connection getConnection() throws ClassNotFoundException{
        return createConnection();
    }
    
    public void closeConnection(){
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
