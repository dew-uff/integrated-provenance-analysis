/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package retrospective;

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
//Document: identifier, label, value, type
public class Visualization extends Entity {
        
    public Visualization(StringBuffer output){        
        
        try {
            
            final String sql = "SELECT id, file_name, image_bytes from thumbnail";       
            
            QueryDB queryDAO = new QueryDB();
            ResultSet rs = queryDAO.getTable(sql);
                    
            while(rs.next()){                
                id = rs.getString("id");
                label = rs.getString("file_name"); 
                type = null;
                value = rs.getBlob("image_bytes").toString();
                generateFact(output);
            }                
            rs.close();   
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void generateFact(StringBuffer output){
        output.append(Prov.ENTITY);
        output.append("(");
        output.append(id);
        output.append("v");
        output.append(",[prop(");
        output.append(Prov.TYPE);
        output.append(",['");
        output.append(ProvOne.VISUALIZATION);
        output.append("','");
        output.append(type);
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
