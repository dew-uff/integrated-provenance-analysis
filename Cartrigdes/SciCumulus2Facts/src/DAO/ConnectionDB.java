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
    private static String hostname, port, username, password, database;
    
    private static Connection createConnection() throws ClassNotFoundException {
        
        if(conn == null){
            try {
                Class.forName("org.postgresql.Driver");
                conn = DriverManager.getConnection("jdbc:postgresql://" + getHostname() + ":" + getPort() + "/" + getDatabase(), getUsername(), getPassword());
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
        public static String getHostname() {
        return hostname;
    }

    /**
     * @return the port
     */
    public static String getPort() {
        return port;
    }

    /**
     * @return the username
     */
    public static String getUsername() {
        return username;
    }

    /**
     * @return the password
     */
    public static String getPassword() {
        return password;
    }

    /**
     * @return the database
     */
    public static String getDatabase() {
        return database;
    }

    /**
     * @param aHostname the hostname to set
     */
    public static void setHostname(String aHostname) {
        hostname = aHostname;
    }

    /**
     * @param aPort the port to set
     */
    public static void setPort(String aPort) {
        port = aPort;
    }

    /**
     * @param aUsername the username to set
     */
    public static void setUsername(String aUsername) {
        username = aUsername;
    }

    /**
     * @param aPassword the password to set
     */
    public static void setPassword(String aPassword) {
        password = aPassword;
    }

    /**
     * @param aDatabase the database to set
     */
    public static void setDatabase(String aDatabase) {
        database = aDatabase;
    }
}
