/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package retrospective;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import model.Activity;
import model.Prov;
import model.ProvOne;
import model.WfMS;

/**
 *
 * @author well
 */
//Execution: identifier, title, startTime, endTime, cached, completed 
public class Execution extends Activity {

        
    public Execution(StringBuffer output){
        
        final String sql = "Select m.id, m.entity_id, a.value, m.module_name, m.ts_start, m.ts_end, m.completed, m.cached " +
                       "from module_exec m " +
                       "left join annotation a on m.module_id = a.parent_id " +
                       "where m.entity_type = 'log' and a.parent_type = 'module' " +
                       "order by m.id";  
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        Date start=null, end=null;
        //SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS"); 

        try {       
            while(rs.next()){ 
                //2015-11-13 15:52:53.322+00 2015-11-13 15:52:53
                startTime = rs.getString("ts_start");
                endTime = rs.getString("ts_end");
                //if(startTime != null)                
                //    start = new SimpleDateFormat("yyyy-MM-d HH:mm:ss").parse(startTime.substring(0,19));
               // if(endTime != null)
                //    end = new SimpleDateFormat("yyyy-MM-d HH:mm:ss").parse(endTime.substring(0,19)); 
               // startTime = formatter.format(start);            
               // endTime = formatter.format(end); 
                
                id = "ex" + rs.getString("id") + rs.getString("entity_id");
                if(!rs.getString("value").equals(""))
                    label = rs.getString("value");
                else
                    label = rs.getString("name");                 
                completed = rs.getInt("completed");
                cached = rs.getInt("cached");                               
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
    }    
}
