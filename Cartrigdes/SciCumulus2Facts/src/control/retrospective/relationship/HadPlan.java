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
public class HadPlan {
    String execution, program, wkfid, ewkfid;
    String sql; 
    ResultSet rs;
    QueryDB queryDAO;    
    
    public HadPlan(StringBuffer output){
        
        sql = "SELECT taskid, cactid, cw.wkfid, ew.ewkfid  " +
              "FROM eactivation eac, eactivity ea, cactivity a, eworkflow ew, cworkflow cw  " +
              "WHERE eac.actid = ea.actid and " +
              "ea.cactid = a.actid and " +
              "ea.cactid = a.actid and " +
              "ew.tag = cw.tag";
              
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {              
                execution = "ex" + rs.getString("taskid");
                program = "pg" + rs.getString("cactid");
                wkfid = "w" + rs.getString("wkfid");
                ewkfid = "ew" + rs.getString("ewkfid"); 
                generateFact(output);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        } 
        
        program = wkfid;
        execution = ewkfid;                
        generateFact(output);  
        
    }      
    public void generateFact(StringBuffer output){                 
        output.append(ProvOne.HADPLAN);
        output.append("(");        
        output.append(execution);
        output.append("s");
        output.append(",");
        output.append(program);
        output.append("s");
        output.append(").\n");                   
    }      
}
