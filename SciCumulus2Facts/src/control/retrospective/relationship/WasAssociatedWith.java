/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.relationship;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Prov;

/**
 *
 * @author nwm26
 */
public class WasAssociatedWith {
    final String sql = "SELECT ea.taskid, m.machineid \n " +
                       "FROM eactivation ea, emachine m\n " +
                       "WHERE ea.machineid = m.machineid";
    String output, machineid, eactid;     
    
    public WasAssociatedWith(StringBuffer output){
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {                                   
            while(rs.next()){                  
                eactid = "ex" + rs.getString("taskid");                
                machineid = "u" + rs.getString("machineid");                
                generateFact(output);
            }
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }     
    }
    public void generateFact(StringBuffer output){ 
        output.append(Prov.WASASSOCIATEDWITH);
        output.append("("); 
        output.append(eactid);
        output.append("s");
        output.append(",");
        output.append(machineid);
        output.append("s");
        output.append(").\n");         
    }
    
}
