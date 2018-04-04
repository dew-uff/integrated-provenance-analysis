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
 * @author nwm26
 */
public class HasSubProgram {
    String program, wkfid;    
    ResultSet rs;
    QueryDB queryDAO;    
    
    public HasSubProgram(StringBuffer output){        
       
        String sql = "Select w.id, m.id, m.entity_id " +
                     "from workflow w, module m " +
                     "where w.id = m.entity_id " +
                     "and parent_type = 'workflow'";
              
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {              
                wkfid = "w" + rs.getString("w.id");
                program = "pg" + rs.getString("m.id") + rs.getString("m.entity_id");   
                generateFact(output);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        } 
    }       
    
    public void generateFact(StringBuffer output){                 
        output.append(Prov.HASSUBPROGRAM);
        output.append("(");        
        output.append(wkfid);
        output.append("v");
        output.append(",");
        output.append(program);
        output.append("v");
        output.append(").\n");                   
    }      
}
