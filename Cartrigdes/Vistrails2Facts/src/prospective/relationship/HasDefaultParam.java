/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prospective.relationship;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.ProvOne;

/**
 *
 * @author Wellington
 */
public class HasDefaultParam {
    
    private String port, param;
    
    public HasDefaultParam(StringBuffer output){
        
        final String sql =  "Select f.id, f.entity_id, p.id, p.entity_id \n" +
                            "from parameter p, function f\n" +
                            "where f.id = p.parent_id\n" +
                            "and f.entity_type = 'workflow'\n" +
                            "and p.entity_type = 'workflow'";  
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);

        try {       
            while(rs.next()){ 
                port = rs.getString("f.id") + rs.getString("f.entity_id");
                param = rs.getString("p.id") + rs.getString("p.entity_id");                          
                generateFact(output);           
            }              
            rs.close();
            
        } catch (SQLException  ex) {
            ex.printStackTrace();
        }                
    }
    public void generateFact(StringBuffer output){ 
        output.append(ProvOne.HASDEFAULTPARAM);
        output.append("(");
        output.append("pin");
        output.append(port);
        output.append("v");
        output.append(",");
        output.append("d");
        output.append(param);
        output.append("v");
        output.append(").\n");                                   
    }      
    
}
