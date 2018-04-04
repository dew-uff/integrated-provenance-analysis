/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package retrospective.relationship;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.ProvOne;

/**
 *
 * @author nwm26
 */
public class HadPlan {
    String execution, program, wkfid, ewkfid;
    String sql; 
    ResultSet rs;
    QueryDB queryDAO;    
    
    public HadPlan(StringBuffer output){
        
        sql =   "Select me.id, me.entity_id, m.id, m.entity_id\n" +
                "from module_exec me, module m\n" +
                "where me.module_id = m.id\n" +
                "and me.entity_type = 'log'\n" +
                "and m.entity_type = 'workflow'";
              
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {              
                execution = "ex" + rs.getString("me.id") + rs.getString("me.entity_id");
                program = "pg" + rs.getString("m.id") + rs.getString("m.entity_id");
                generateFact(output);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }                       
        
        
        sql =   "Select we.id, we.entity_id, w.id, w.entity_id\n" +
                "from workflow_exec we, workflow w\n" +
                "where we.parent_version = w.parent_id\n" +
                "and we.entity_type = 'log'";
              
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {              
                wkfid = "w" + rs.getString("w.id");
                ewkfid = "ew" + rs.getString("we.id") + rs.getString("we.entity_id"); 
                program = wkfid;
                execution = ewkfid;    
                generateFact(output);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        } 
    }       
    
    public void generateFact(StringBuffer output){                 
        output.append(ProvOne.HADPLAN);
        output.append("(");        
        output.append(execution);
        output.append("v");
        output.append(",");
        output.append(program);
        output.append("v");
        output.append(").\n");                   
    }      
}
