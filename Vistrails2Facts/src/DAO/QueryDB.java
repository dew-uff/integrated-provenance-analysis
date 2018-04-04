/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nwm26
 */
public class QueryDB {
    ResultSet rs = null;
    Connection conn = null;

public ResultSet getTable(String sql) { 
        try {
            conn = new ConnectionDB().getConnection();
            Statement st = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);                        
            rs = st.executeQuery(sql);         
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(QueryDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }   

public void closeDB(){
    try{
        rs.close();
        conn.close();
    } catch (SQLException e) {
        System.out.println(e);
    }
}
    
}