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
 * @author well
 */
public class WasGeneratedBy {
    String data, execution;
    
    public WasGeneratedBy(StringBuffer output){         

        final String sql =  "SELECT m.id, m.entity_id, p.id, po.id, p.entity_id, substring(p.type, 31) as type " +
                            "FROM function f, module_exec m, parameter p, port po " +
                            "where f.entity_type = 'workflow' " +
                            "and m.parent_type = 'workflow_exec' " +
                            "and m.module_id = f.parent_id " +
                            "and p.parent_id = f.id " +
                            "and p.parent_type = 'function' " +
                            "and f.parent_id = po.moduleId " +
                            "and po.entity_type = 'workflow' " +
                            "and po.type = 'source' " +
                            "and po.entity_id = p.entity_id " +
                            "and f.entity_id = p.entity_id " +
                            "and m.entity_id = 1";       
   
        QueryDB queryDAO = new QueryDB();                    
        ResultSet rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) { 
                
                if (rs.getString("type").equals("File"))
                    data = "dc" + rs.getString("p.id") + rs.getString("po.id") + rs.getString("p.entity_id");
                else
                    data = "d" + rs.getString("p.id") + rs.getString("po.id") + rs.getString("p.entity_id");                    
                 
                execution = "ex" + rs.getString("m.id") + rs.getString("m.entity_id");                
                generateFact(output);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }                                      
    }      
    public void generateFact(StringBuffer output){                       
        output.append(Prov.WASGENERATEDBY);
        output.append("(");        
        output.append(data);
        output.append("v");
        output.append(",");
        output.append(execution);
        output.append("v");
        output.append(").\n");                   
    }
}

