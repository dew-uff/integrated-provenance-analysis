/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package retrospective.relationship;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Prov;

/**
 *
 * @author nwm26
 */
public class WasAssociatedWith {
    String wkf_execution, user;    
    ResultSet rs;
    QueryDB queryDAO;    
    
    public WasAssociatedWith(StringBuffer output){        
       
        String sql = "Select m.id, we.id, we.entity_id \n" +
                     "from machine m, workflow_exec we\n" +
                     "where m.log_id = we.entity_id";
              
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {              
                wkf_execution = "ew" + rs.getString("we.id") + rs.getString("we.entity_id");
                user = "u" + rs.getString("m.id");   
                generateFact(output);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        } 
    }       
    
    public void generateFact(StringBuffer output){                 
        output.append(Prov.WASASSOCIATEDWITH);
        output.append("(");        
        output.append(wkf_execution);
        output.append("v");
        output.append(",");
        output.append(user);
        output.append("v");
        output.append(").\n");                   
    }      
}
