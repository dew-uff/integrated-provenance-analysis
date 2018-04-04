/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prospective.relationship;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Prov;

/**
 *
 * @author well
 */
public class HasPort {

    String portId, program, portType, sql;
    String pre_pg = "";
    QueryDB queryDAO;
    ResultSet rs;
    
    public HasPort(StringBuffer output){
        
        //hasInPort(program, port) and hasOutPort(program, port)
        sql = "SELECT m.id, m.entity_id, p.id, p.entity_id, p.type \n" +
                           "from port p, module m \n" +
                           "where p.moduleId = m.id \n" +
                           "and m.parent_type = 'workflow' \n" +
                           "and p.entity_type = 'workflow' ";
        
        queryDAO = new QueryDB();
        rs = queryDAO.getTable(sql);
        
        try {                                   
            while(rs.next()){                  
                program = "pg" + rs.getString("m.id") + rs.getString("m.entity_id");
                switch (rs.getString("type")){
                    case "destination":
                        portId = "pin" + rs.getString("p.id") + rs.getString("p.entity_id");  
                        portType = Prov.HASINPORT;
                        break;
                    case "source":
                        portId = "pout" + rs.getString("p.id") + rs.getString("p.entity_id"); 
                        portType = Prov.HASOUTPORT;
                        break;                        
                }               
                generateFact(output);                
            }
            rs.close();  
            hasInPort(output);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }                
    }
    
    //hasInPort(workflow, port)
    public void hasInPort(StringBuffer output){    
                
        sql =   "Select f.id, f.entity_id, m.id, m.entity_id\n" +
                "from function f, module m\n" +
                "where f.parent_id = m.id\n" +
                "and f.entity_type = 'workflow'\n" +
                "and m.entity_type = 'workflow'\n" +
                "order by f.id";
        
        queryDAO = new QueryDB();
        rs = queryDAO.getTable(sql);
        
        try {           
            while(rs.next()){  
                portId = "pin" + rs.getString("f.id") + rs.getString("f.entity_id"); 
                //if it was the first module to be added, it will be the input port of the workflow
                program = rs.getString("m.id");                
                if(pre_pg.equals(program) || pre_pg.equals("")){ 
                    program = "w" + rs.getString("f.entity_id");
                    generateFact(output);
                    program = "pg" + rs.getString("m.id") + rs.getString("m.entity_id");
                    generateFact(output);
                    pre_pg = rs.getString("m.id");
                }else {
                    program = "pg" + rs.getString("m.id") + rs.getString("m.entity_id");                                  
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
        output.append(program);
        output.append("v");
        output.append(",");
        output.append(portId);
        output.append("v");
        output.append(").\n");           
    }
    
}
