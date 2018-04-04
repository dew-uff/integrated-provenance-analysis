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
public class WasInformedBy {
    String execution1, execution2;    
    ResultSet rs, rs2;
    QueryDB queryDAO;    
    
    public WasInformedBy(StringBuffer output){        
       
        String sql = "SELECT me.id, me.entity_id, po.parent_id, we.entity_id, we.id  \n" +
                    "FROM port po, module_exec me, workflow_exec we \n" +
                    "where we.id = me.parent_id \n" +
                    "and po.moduleId = me.module_id\n" +
                    "and po.entity_type = 'workflow'\n" +
                    "and po.parent_type = 'connection'\n" +
                    "and me.entity_type = 'log'\n" +
                    "and po.type = 'destination'\n" + //input port                    
                    "order by po.entity_id, me.entity_id, po.parent_id;";

        String sql2 = "SELECT me.id, me.entity_id, po.parent_id, we.entity_id, we.id \n" +
                    "FROM port po, module_exec me, workflow_exec we \n" +
                    "where we.id = me.parent_id \n" +
                    "and po.moduleId = me.module_id\n" +
                    "and po.entity_type = 'workflow'\n" +
                    "and po.parent_type = 'connection'\n" +
                    "and me.entity_type = 'log'\n" +
                    "and po.type = 'source'\n" + //output port                    
                    "order by po.entity_id, me.entity_id, po.parent_id;";        
        
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        rs2 = queryDAO.getTable(sql2);
        
        try {
            while(rs.next()) {                 
                while(rs2.next()) {                    
                    if((rs.getInt("po.parent_id") == rs2.getInt("po.parent_id")) && 
                            rs.getInt("we.id")==rs2.getInt("we.id")){
                        execution1 = "ex" + rs.getString("me.id") + rs.getString("me.entity_id");
                        execution2 = "ex" + rs2.getString("me.id") + rs2.getString("me.entity_id"); 
                        generateFact(output);
                    }
                }
                rs2.beforeFirst();
            }
        } catch(SQLException e) {
            e.printStackTrace();
        } 
    }       
    
    public void generateFact(StringBuffer output){                 
        output.append(Prov.WASINFORMEDBY);
        output.append("(");        
        output.append(execution1);
        output.append("v");
        output.append(",");
        output.append(execution2);
        output.append("v");
        output.append(").\n");                   
    }      
}
