/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective;

import DAO.QueryDB;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import model.Prov;
import model.ProvOne;
import model.WfMS;

/**
 *
 * @author nwm26
 */
//Execution: identifier, title, startTime, endTime, cached, completed 
public class Execution {
    final String sql = "Select eac.taskid, ea.tag, eac.starttime, eac.endtime, eac.status " +
                       "from eactivity ea, eactivation eac, eworkflow ew \n " +
                       "where ea.actid = eac.actid and ea.wkfid = ew.ewkfid \n " +
                       "order by eac.taskid";
    String taskid, label, startTime, endTime;
    int cached, completed;
    //int cont =0;    

        
    public Execution(StringBuffer output){
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        Date start=null, end=null;
        //SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS"); 

        try {       
            while(rs.next()){ 
                //2015-11-13 15:52:53.322+00 2015-11-13 15:52:53
                startTime = rs.getString("starttime");
                endTime = rs.getString("endtime");
                //if(startTime != null)                
                //    start = new SimpleDateFormat("yyyy-MM-d HH:mm:ss").parse(startTime.substring(0,19));
               // if(endTime != null)
                //    end = new SimpleDateFormat("yyyy-MM-d HH:mm:ss").parse(endTime.substring(0,19)); 
               // startTime = formatter.format(start);            
               // endTime = formatter.format(end); 
                
                taskid = "ex" + rs.getString("taskid");
                label = rs.getString("tag");                  
                completed = (rs.getString("status").equals("FINISHED")) ? 1 : 0;
                cached = 0;                               
                generateFact(output);           
            }
            rs.close();
        } catch (SQLException  ex) {
            ex.printStackTrace();
        }                
    }
    public void generateFact(StringBuffer output){ 
        output.append(Prov.ACTIVITY);
        output.append("(");
        output.append(taskid);
        output.append("s");
        output.append(",[prop(");
        output.append(Prov.TYPE);
        output.append(",['");
        output.append(ProvOne.EXECUTION);
        output.append("'])");  
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",'");
        output.append(label);
        output.append("')"); 
        output.append(",prop(");
        output.append(Prov.STARTTIME);
        output.append(",'");
        output.append(startTime);
        output.append("')");
        output.append(",prop(");
        output.append(Prov.ENDTIME);
        output.append(",'");
        output.append(endTime);
        output.append("')");    
        output.append(",prop(");
        output.append(WfMS.COMPLETED);
        output.append(",'");
        output.append(completed);
        output.append("')");                           
        output.append("]).\n");                  
    }    
}
