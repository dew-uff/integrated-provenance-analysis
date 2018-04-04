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
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.FileManager;
/**
 *
 * @author nwm26
 */
//Document: identifier, label, type
public class Document_Bkp {
   /* final String sql = "Select f.fileid, f.fdir, f.fname, ea.taskid, a.tag, f.fdata, ew.tag  from efile f, eactivity a, eactivation ea, eworkflow ew " +
                        "where a.actid = ea.actid and a.actid = f.actid and ea.taskid = f.taskid and f.fname not like '%~' and a.wkfid = ew.ewkfid " +
                        "order by f.fileid";
    String output, fileid, attrId, label, type;
    int cont = 0;   
        
    public Document_Bkp(){
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try { 
            while(rs.next()) {              
                
                fileid = "dc" + rs.getString("fileid");
                label = rs.getString("fname");   
                type = "file";
                cont++;
                attrId = "a" + cont + fileid;  
                
               /* output = ProvOneType.document + "(\"" + fileid + "\",\"" + attrId + "\").\n" +
                         ProvField.attribute + "(\"" + attrId + "\",\"" + ProvField.label + "\",\"" + label + "\").\n" +                
                         ProvField.attribute + "(\"" + attrId + "\",\"" + "package" + "\",\"" + type + "\").\n";   */
                
              /*  FileManager.getBufferedWriter().write(output);                  
            }
            rs.close();
        } catch (IOException | SQLException ex) {
            Logger.getLogger(Document_Bkp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
*/
}
