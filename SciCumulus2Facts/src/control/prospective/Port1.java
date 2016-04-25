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
//Port: identifier, title, signature
public class Port1 {
    final String sql = "SELECT r.relid, r.rname, f.fname, f.ftype " +
                       "FROM crelation r, cfield f " +
                       "WHERE r.relid = f.relid order by r.relid";
    String relid, label, attrId, signature, previousSignature;
    int cont = 0;              
           
    public void printInputPort(StringBuffer output){
        int previousRelId = 0;
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {   
                                
            while(rs.next()){  
                
                relid = "pin" + rs.getString("relid");
                label = rs.getString("rname"); 
                signature = rs.getString("fname") + ":" + rs.getString("ftype");
                cont++;
                attrId = "a" + cont + relid;                                               
                
                if(rs.getInt("relid") != previousRelId){
                    
                    if(previousRelId != 0){                                
                        output.append(output.substring(0, output.length()-1));
                        output.append("])]).\n");                    
                    }
                    
                    output.append(Prov.ENTITY);
                    output.append("("); 
                    output.append(relid);
                    output.append(",[prop("); 
                    output.append(Prov.TYPE);
                    output.append(",'");
                    output.append(ProvOne.PORT);
                    output.append("')");  
                    output.append(",prop(");
                    output.append(Prov.LABEL);
                    output.append(",'");
                    output.append(label);
                    output.append("')");
                    output.append(",prop(");
                    output.append(WfMS.SIGNATURE);
                    output.append(",[");  
                }                                                                      
                
                output.append("'");
                output.append(signature);
                output.append("',"); 
                previousRelId = rs.getInt("relid");
                         
            }
           output.append(output.substring(0, output.length()-1));
           output.append("])]).\n");              
           rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }                
    }
public void printOutputPort(StringBuffer output){
        int previousRelId = 0;
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {   
                                
            while(rs.next()){  
                
                relid = "pout" + rs.getString("relid");
                label = rs.getString("rname"); 
                signature = rs.getString("fname") + ":" + rs.getString("ftype");
                cont++;
                attrId = "a" + cont + relid;                                               
                
                if(rs.getInt("relid") != previousRelId){
                    
                    if(previousRelId != 0){
                        
                        output.append(output.substring(0, output.length()-1));
                        output.append("])]).\n");    
                    }
                    
                    output.append(Prov.ENTITY);
                    output.append("("); 
                    output.append(relid);
                    output.append(",[prop("); 
                    output.append(Prov.TYPE);
                    output.append(",'");
                    output.append(ProvOne.PORT);
                    output.append("')");  
                    output.append(",prop(");
                    output.append(Prov.LABEL);
                    output.append(",'");
                    output.append(label);
                    output.append("')");
                    output.append(",prop(");
                    output.append(WfMS.SIGNATURE);
                    output.append(",["); 
                }                                                                      
                output.append("'");
                output.append(signature);
                output.append("',"); 
                previousRelId = rs.getInt("relid");                         
            }
           output.append(output.substring(1, output.length()-1));
           output.append("])]).\n");        
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }                
    }    
    
}
