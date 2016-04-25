/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.prospective.relationship;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Prov;

/**
 *
 * @author nwm26
 */
//Port: identifier, title, signature
public class HasSubProgram {
    final String sql = "Select w.wkfid, a.actid, w.tag from cworkflow w, cactivity a\n " +
                       "where w.wkfid = a.wkfid\n " +
                       "order by w.wkfid, a.actid";
    String wkfid, actid;     
           
    public HasSubProgram(StringBuffer output){
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {   
                                
            while(rs.next()){                  
                wkfid = "w" + rs.getString("wkfid");
                actid = "pg" + rs.getString("actid");
                generateFact(output);                             
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(HasSubProgram.class.getName()).log(Level.SEVERE, null, ex);
        }                
    }
    
    public void generateFact(StringBuffer output){
        output.append(Prov.HASSUBPROGRAM);
        output.append("(");                                  
        output.append(wkfid);
        output.append("s");
        output.append(",");
        output.append(actid);
        output.append("s");
        output.append(").\n");            
    }
}
