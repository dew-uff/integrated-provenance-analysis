package retrospective;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Activity;
import model.Prov;
import model.ProvOne;
import model.WfMS;

/**
 *
 * @author well
 */
//Execution: identifier, title, startTime, endTime, cached, completed 
public class WExecution extends Activity {   

    public WExecution(StringBuffer output){
        
        final String sql = "SELECT id, entity_id, name, ts_start, ts_end, completed from workflow_exec";
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {       
            while(rs.next()){                                     
               
                id = "ew" + rs.getString("id") + rs.getString("entity_id");
                label = rs.getString("name");  
                startTime = rs.getString("ts_start");
                endTime = rs.getString("ts_end");
                completed = rs.getInt("completed");
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
            output.append(id);
            output.append("v");
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
            output.append(id);
            output.append("v");
            output.append(", 2).\n");                
    }
}

