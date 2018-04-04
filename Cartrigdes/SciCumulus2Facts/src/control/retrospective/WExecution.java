package control.retrospective;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Prov;
import model.ProvOne;
import model.WfMS;

/**
 *
 * @author nwm26
 */
//Execution: identifier, title, startTime, endTime, cached, completed 
public class WExecution {
    final String sql = "SELECT w.ewkfid, w.tagexec, a.status,  min(a.starttime) as starttime, max(a.endtime) as endtime\n " +
                       "FROM eworkflow w, eactivity a\n " +
                       "WHERE w.ewkfid = a.wkfid\n " +
                       "GROUP BY ewkfid, w.tagexec, a.status";
    String taskid, label, startTime, endTime;
    int cached, completed;
        
    public WExecution(StringBuffer output){
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {       
            while(rs.next()){                                     
               
                taskid = "ew" + rs.getString("ewkfid");
                label = rs.getString("tagexec");  
                startTime = rs.getString("starttime");
                endTime = rs.getString("endtime");
                completed = (rs.getString("status").equals("FINISHED")) ? 1 : 0;
                cached = 0;   
                generateFact(output);
            }
            rs.close();
        } catch (SQLException ex) {
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
            
            output.append("hadDataSet(");
            output.append(taskid);
            output.append("s");
            output.append(", 1).\n");                
    }
}

