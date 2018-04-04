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
public class Used {
    String data, execution,pre_data;
    String pre_ex = "";
    
    public Used(StringBuffer output){         

        final String sql =  "SELECT me.id, me.module_id, me.parent_id, me.entity_id, p.id, p.entity_id, f.id, f.name, substring(p.type, 31) as type, we.id\n" +
                            "FROM module_exec me, parameter p, function f, workflow_exec we\n" +
                            "where me.module_id = f.parent_id\n" +
                            "and p.parent_id = f.id\n" +
                            "and we.entity_id = me.parent_id\n" +
                            "and p.entity_type = 'workflow' \n" +
                            "and f.entity_type = 'workflow' \n" +
                            "and me.entity_type = 'log' \n" +
                            "order by me.entity_id, me.id, p.id desc";
   
        QueryDB queryDAO = new QueryDB();                    
        ResultSet rs = queryDAO.getTable(sql);
        
        try {        
            while(rs.next()) {                   
                if (rs.getString("type").equals("File"))
                    data = "dc" + rs.getString("p.id") + rs.getString("p.entity_id");
                else
                    data = "d" + rs.getString("p.id") + rs.getString("p.entity_id");                 
                //if it was the first module_exec to be executed and f.name is different of 'source', it will be the input data used by the workflow_exec
                execution = rs.getString("me.id");                
                if((pre_ex.equals(execution) &&  !rs.getString("f.name").equals("source")) || pre_ex.equals("")){                     
                    execution = "ew" + rs.getString("we.id") + rs.getString("me.parent_id");                
                    generateFact(output);                                                          
                    execution = "ex" + rs.getString("me.id") + rs.getString("me.parent_id");                
                    generateFact(output);                                          
                    pre_ex = rs.getString("me.id");
                }else{                                                                             
                    execution = "ex" + rs.getString("me.id") + rs.getString("me.parent_id");                
                    generateFact(output);                    
                }                
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }                                      
    }      
    public void generateFact(StringBuffer output){                         
        output.append(Prov.USED);
        output.append("(");        
        output.append(execution);
        output.append("v");
        output.append(",");
        output.append(data);
        output.append("v");
        output.append(").\n");                   
    }
}

