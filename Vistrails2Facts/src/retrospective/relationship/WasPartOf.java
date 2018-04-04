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
public class WasPartOf {
    String wkf_execution, execution;    
    ResultSet rs;
    QueryDB queryDAO;    
    
    public WasPartOf(StringBuffer output){        
       
        String sql = "Select we.id, we.entity_id, me.id, me.entity_id \n" +
                     "from workflow_exec we, module_exec me\n" +
                     "where me.parent_id = we.id";
              
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {              
                wkf_execution = "ew" + rs.getString("we.id") + rs.getString("we.entity_id");
                execution = "ex" + rs.getString("me.id") + rs.getString("me.entity_id");   
                generateFact(output);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        } 
    }       
    
    public void generateFact(StringBuffer output){                 
        output.append(Prov.WASPARTOF);
        output.append("(");        
        output.append(execution);
        output.append("v");
        output.append(",");
        output.append(wkf_execution);
        output.append("v");
        output.append(").\n");                   
    }      
}
