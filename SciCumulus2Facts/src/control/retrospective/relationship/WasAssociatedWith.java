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

    String output, user, eworkflow;     
    
    public WasAssociatedWith(StringBuffer output){
        final String sql =  "SELECT m.machineid, ew.ewkfid " +
                            "FROM eactivation ea, emachine m, eactivity a, eworkflow ew\n" +
                            "WHERE ea.machineid = m.machineid\n" +
                            "and ea.actid = a.actid\n" +
                            "and a.wkfid = ew.ewkfid\n" +
                            "group by m.machineid, ew.ewkfid"; 
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {                                   
            while(rs.next()){                  
                eworkflow = "ew" + rs.getInt("ewkfid");                
                user = "u" + rs.getInt("machineid");                
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
        output.append(eworkflow);
        output.append("s");
        output.append(",");
        output.append(user);
        output.append("s");
        output.append(").\n");         
    }
    
}
