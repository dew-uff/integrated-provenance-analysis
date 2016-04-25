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
public class HasOutPort {
    final String sql = "Select a.actid, a.tag, r.relid, m.previousid, r.rtype, r.rname " +
                        "from crelation r,  cmapping m, cactivity a " +
                        "where r.relid = m.crelid and m.previousid = a.actid " +
                        "order by r.relid";
    String portId, actid;         
           
    public HasOutPort(StringBuffer output){
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {                                   
            while(rs.next()){  
                actid = "pg" + rs.getString("actid");
                switch (rs.getString("rtype")){
                    case "INPUT":
                        portId = "pin" + rs.getString("relid");    
                        break;
                    case "INTERMEDIARY":
                        portId = "pint" + rs.getString("relid");    
                        break;
                    case "OUTPUT":
                        portId = "pout" + rs.getString("relid");    
                        break;
                }    
                generateFact(output);                  
            }
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }                
    }
    
    public void generateFact(StringBuffer output){
        output.append(Prov.HASOUTPORT);
        output.append("(");
        output.append(actid);
        output.append("s");
        output.append(",");
        output.append(portId);
        output.append("s");
        output.append(").\n");            
    }
}
