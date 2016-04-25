/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.relationship;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Prov;

/**
 *
 * @author nwm26
 */
public class WasInformedBy {
    String ex1, ex2;
    String sql; 
    ResultSet rs;
    QueryDB queryDAO;    
    
    public WasInformedBy(StringBuffer output){
        
        sql = "SELECT previousid, nextid " +
              "FROM cmapping ";
              
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {              
                if(rs.getString("nextid") != null && rs.getString("previousid") != null){
                    ex2 = "ex" + rs.getString("nextid");
                    ex1 = "ex" + rs.getString("previousid");                
                    generateFact(output);
                }
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }                                      
    }      
    public void generateFact(StringBuffer output){                 
        output.append(Prov.WASINFORMEDBY);
        output.append("(");        
        output.append(ex2);
        output.append("s");
        output.append(",");
        output.append(ex1);
        output.append("s");
        output.append(").\n");                   
    }    
}
