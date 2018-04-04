/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.relationship;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.ProvOne;

/**
 *
 * @author nwm26
 */
public class HadOutPort {
    final String sql = "Select eac.taskid, a.tag, r.relid, m.previousid, r.rtype, r.rname " +
                        "from crelation r,  cmapping m, cactivity a, eactivity ea, eactivation eac " +
                        "where r.relid = m.crelid and m.previousid = a.actid and " +
                        "eac.actid = ea.actid and ea.cactid = a.actid " +
                        "order by r.relid"; 
    String portId, execution;

    public HadOutPort(StringBuffer output){
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {   
                                
            while(rs.next()){                  
                execution = "ex" + rs.getString("taskid");
                portId = "pout" + rs.getString("relid");                 
                generateFact(output);                
            }
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }                
    }
    
    public void generateFact(StringBuffer output){
        output.append(ProvOne.HADOUTPORT);
        output.append("(");
        output.append(execution);
        output.append("s");
        output.append(",");
        output.append(portId);
        output.append("s");
        output.append(").\n");           
    }    
}
