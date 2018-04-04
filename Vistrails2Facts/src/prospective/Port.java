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
public class Port extends Entity {
    

    String signature;
    
    public Port(StringBuffer output){
        
        final String sql =  "Select id, entity_id, name, 'destination' as type from function\n" +
                            "where entity_type = 'workflow'\n" +
                            "UNION\n" +
                            "select id, entity_id, name, type from port\n" +
                            "where entity_type = 'workflow' \n" +
                            "order by id, entity_id";
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql); 
    
        try {
            while(rs.next()){                  
                signature = null;
                label = rs.getString("name");  
                switch (rs.getString("type")){
                    case "destination":
                        id = "pin" + rs.getString("id") + rs.getString("entity_id");    
                        break;
                    case "source":
                        id = "pout" + rs.getString("id") + rs.getString("entity_id");    
                        break;                        
                }                               
                generateFact(output);
            }
            rs.close();    
        } catch (SQLException ex) {
            ex.printStackTrace();
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
                output.append(ProvOne.PORT);
                output.append("'])");  
                output.append(",prop(");
                output.append(Prov.LABEL);
                output.append(",'");
                output.append(label);
                output.append("')");
                //output.append(",prop(");
                //output.append(WfMS.SIGNATURE);
                //output.append(",[");                                                                                
                //output.append("'");
                //output.append(signature);                        
                output.append("]).\n");              
    }
}
