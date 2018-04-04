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
/**
 *
 * @author well
 */

//Process: identifier, title, package    
public class Program extends Entity{
    
    final String provOneType = "provone:program";
    private String package_;
        
    public Program(StringBuffer output){
        final String sql = "Select m.id, m.entity_id, a.value, m.name, m.package from module m " +
                           "left join annotation a on m.id = a.parent_id " +     
                           "where m.entity_type = 'workflow' and a.parent_type = 'module'";       
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {    
            while(rs.next()){                                            
                id = "pg" + rs.getString("id") + rs.getString("entity_id");
                if(!rs.getString("value").equals(""))
                    label = rs.getString("value");
                else
                    label = rs.getString("name");
                package_ = rs.getString("package");   
                type = "prov:plan";
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
        output.append(type);
        output.append("','");
        output.append(provOneType);
        output.append("'])");
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",'");
        output.append(label);
        output.append("')"); 
        //output.append(",prop('");
        //output.append(WfMS.PACKAGE);
        //output.append("','");
        //output.append(package_ );
        //output.append("')"); 
        output.append("]).\n");        
    }    
}
