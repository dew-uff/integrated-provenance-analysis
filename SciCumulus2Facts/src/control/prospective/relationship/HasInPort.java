/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.prospective.relationship;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Prov;

/**
 *
 * @author nwm26
 */
//Port: identifier, title, signature
public class HasInPort {
    final String sql = "Select a.actid, a.tag, r.relid, m.nextid, r.rtype, r.rname\n" +
                        "from crelation r,  cmapping m, cactivity a\n" +
                        "where r.relid = m.crelid and m.nextid = a.actid\n" +
                        "order by r.relid";
    String portId, actid ;

    public HasInPort(StringBuffer output){
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {   
                                
            while(rs.next()){                  
                actid = "pg" + rs.getString("actid");
                portId = "pin" + rs.getString("relid");                 
                generateFact(output);                
            }
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }                
    }
    
    public void generateFact(StringBuffer output){
        output.append(Prov.HASINPORT);
        output.append("(");
        output.append(actid);
        output.append("s");
        output.append(",");
        output.append(portId);
        output.append("s");
        output.append(").\n");           
    }    
}
