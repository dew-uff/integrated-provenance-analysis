/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.prospective;

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
public class Port {
        final String sql = "SELECT * from crelation r ";
    String portId, label, signature, previousOutPort, previousInPort; 
    
    public Port(StringBuffer output){
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql); 
    
        try {
            while(rs.next()){                  
                signature = null;
                label = rs.getString("rname");  
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
                output.append(Prov.ENTITY);
                output.append("("); 
                output.append(portId);
                output.append("s");
                output.append(",[prop("); 
                output.append(Prov.TYPE);
                output.append(",['");
                output.append(ProvOne.PORT);
                output.append("'])");  
                output.append(",prop(");
                output.append(Prov.LABEL);
                output.append(",'");
                output.append(label);
                output.append("')");
                //output.append(",prop(");
                //output.append(WfMS.SIGNATURE);
                //output.append(",[");                                                                                
                //output.append("'");
                //output.append(signature);                        
                output.append("]).\n");              
    }
}
