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

//Prov-One: Workflow: Identifier, Title
public class Workflow {
    final String sql = "Select wkfid, tag from cworkflow";
    String wkfId, label;
        
    public Workflow(StringBuffer output){
        
        try {        
            QueryDB queryDAO = new QueryDB();
            ResultSet rs = queryDAO.getTable(sql);            

                while(rs.next()){                    
                    wkfId = "w" + rs.getString("wkfid");
                    label = "'" + rs.getString("tag") + "'";
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
        output.append(wkfId); 
        output.append("s");
        output.append(",[prop("); 
        output.append(Prov.TYPE);
        output.append(",['"); 
        output.append(Prov.PLAN + "'");                           
        output.append(",'");
        output.append(ProvOne.WORKFLOW);
        output.append("'])");  
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",");
        output.append(label);
        output.append(")"); 
        output.append("]).\n"); 
        
        output.append("hasDataSet(");
        output.append(wkfId);
        output.append("s");
        output.append(", 1).\n");         
    }    
}
