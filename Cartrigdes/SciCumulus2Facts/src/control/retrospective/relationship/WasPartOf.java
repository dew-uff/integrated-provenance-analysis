package control.retrospective.relationship;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Prov;

/**
 *
 * @author nwm26
 */
public class WasPartOf {
    final String sql = "SELECT ewkfid, ea.taskid \n " +
                       "FROM eworkflow w, eactivity a, eactivation ea\n " +
                       "WHERE w.ewkfid = a.wkfid and a.actid = ea.actid";
    String output, ewkfid, actid;     
    
    public WasPartOf(StringBuffer output){
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {   
                                
            while(rs.next()){                  
                actid = "ex" + rs.getString("taskid");                
                ewkfid = "ew" + rs.getString("ewkfid"); 
                generateFact(output);
            }
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }     
    }
    
    public void generateFact(StringBuffer output){ 
        output.append(Prov.WASPARTOF);
        output.append("(");
        output.append(actid);
        output.append("s");
        output.append(",");
        output.append(ewkfid);
        output.append("s");
        output.append(").\n");  
    }    
}
