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
 * @author well
 */
public class HadPort {

    String portId, execution, portType, sql;
    String pre_ex = "";
    QueryDB queryDAO;
    ResultSet rs;

    public HadPort(StringBuffer output){
        
        final String sql = "SELECT p.id, p.entity_id, me.id, me.entity_id, p.type \n" +
                           "from port p, module m, module_exec me \n" +
                           "where p.moduleId = m.id \n" +
                           "and m.id = me.module_id \n" +
                           "and m.parent_type = 'workflow' \n" +
                           "and p.entity_type = 'workflow' ";               
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {   
                                
            while(rs.next()){                  
                execution = "ex" + rs.getString("me.id") + rs.getString("me.entity_id");
                switch (rs.getString("type")){
                    case "destination":
                        portId = "pin" + rs.getString("p.id") + rs.getString("p.entity_id");  
                        portType = ProvOne.HADINPORT;
                        break;
                    case "source":
                        portId = "pout" + rs.getString("p.id") + rs.getString("p.entity_id"); 
                        portType = ProvOne.HADOUTPORT;
                        break;                        
                }               
                generateFact(output);                
            }
            rs.close();
            hadInPort(output);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }                
    }

    //hadInPort(workflow_exec, port)
    public void hadInPort(StringBuffer output){    
                
        sql =   "Select f.id, f.entity_id, me.id, me.entity_id, we.id\n" +
                "from function f, module m, module_exec me, workflow_exec we\n" +
                "where f.parent_id = m.id\n" +
                "and me.module_id = m.id\n" +
                "and we.id = me.parent_id\n" +
                "and f.entity_type = 'workflow'\n" +
                "and m.entity_type = 'workflow'\n" +
                "and me.entity_type = 'log'\n" +
                "order by me.entity_id, me.id, f.id";
        
        queryDAO = new QueryDB();
        rs = queryDAO.getTable(sql);
        
        try {           
            while(rs.next()){ 
                portId = "pin" + rs.getString("f.id") + rs.getString("f.entity_id");                
                //if it was the first module_exec to be executed, it will be the input port used by the workflow_exec
                execution = rs.getString("me.id");                
                if(pre_ex.equals(execution) || pre_ex.equals("")){ 
                    execution = "ew" + rs.getString("we.id") + rs.getString("me.entity_id");                     
                    generateFact(output);
                    execution = "ex" + rs.getString("me.id") + rs.getString("me.entity_id");
                    generateFact(output);  
                    pre_ex = rs.getString("me.id");
                }else{                               
                    execution = "ex" + rs.getString("me.id") + rs.getString("me.entity_id");                                 
                    generateFact(output);  
                }
            }
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }                        
    }
    
    public void generateFact(StringBuffer output){
        output.append(portType);
        output.append("(");
        output.append(execution);
        output.append("v");
        output.append(",");
        output.append(portId);
        output.append("v");
        output.append(").\n");           
    }    
}
