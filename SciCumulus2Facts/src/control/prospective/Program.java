/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.prospective;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Prov;
import model.ProvOne;

/**
 *
 * @author nwm26
 */

//Process: identifier, title, package    
public class Program {
    final String sql = "Select actid, tag, templatedir, activation  from cactivity";
    String actid, label, attrId, package_;
    int cont = 0;    
        
    public Program(StringBuffer output){
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {    
            while(rs.next()){                            
                
                actid = "pg" + rs.getString("actid");
                label = rs.getString("tag");   
                package_ = rs.getString("templatedir") + rs.getString("activation");
                cont++;                                                           
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
        output.append(actid);
        output.append("s");        
        output.append(",[prop(");
        output.append(Prov.TYPE);
        output.append(",['");
        output.append(Prov.PLAN);
        output.append("','");
        output.append(ProvOne.PROGRAM);
        output.append("'])");
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",'");
        output.append(label);
        output.append("')"); 
        //output.append(",prop(");
        //output.append(WfMS.PACKAGE);
        //output.append(",'");
        //output.append(package_ );
        //output.append("')"); 
        output.append("]).\n");        
    }
    
}
