    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prospective;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Entity;
import model.Prov;
import model.ProvOne;

/**
 *
 * @author well
 */
public class Data extends Entity {
    
    public Data(StringBuffer output){        
        
            final String sql =  "SELECT p.id, p.entity_id, f.name, substring(p.type, 31) as type, p.val from parameter p, function f\n" +
                                "where p.parent_id = f.id\n" +
                                "and p.entity_type = 'workflow'\n" +
                                "and f.entity_type = 'workflow'\n" +
                                "order by p.id";       
              
        QueryDB queryDAO = new QueryDB();                    
        ResultSet rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {              
                if (rs.getString("type").equals("File"))
                    id = "dc" + rs.getString("p.id") + rs.getString("p.entity_id") + "v";
                else
                    id = "d" + rs.getString("p.id") + rs.getString("p.entity_id") + "v";                    
                
                label =  rs.getString("f.name");                
                type =  rs.getString("type");   
                value = rs.getString("p.val"); 
                generateFact(output);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }            
    }   
    public void generateFact(StringBuffer output){
        output.append(Prov.ENTITY);
        output.append("(");
        output.append(id); 
        output.append(",[prop(");                         
        output.append(Prov.TYPE);
        output.append(",['");
        output.append(ProvOne.DATA);
        //output.append("','");
        //output.append(type);
        output.append("'])");
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",'");
        output.append(label);
        output.append("')"); 
        output.append(",prop(");
        output.append(Prov.VALUE);
        output.append(",'");
        output.append(value);
        output.append("')");   
        output.append("]).\n");            
    }      
}   
