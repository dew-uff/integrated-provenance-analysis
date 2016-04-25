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
import model.Prov;
import model.ProvOne;
import utils.FileManager;
/**
 *
 * @author nwm26
 */
//Data: identifier, label, value, type
public class Data1 {

   /* String output, identifier, value, label, type, workflow;
    String sql, table, wkfid;
    //int cont = 0;  
    ResultSet rs, rs1, rs2;
    QueryDB queryDAO;
        
    public Data1(){        
        
        try {
            
            sql = "SELECT wkfid, tag " +
                  "FROM cworkflow";           
            
            queryDAO = new QueryDB();
            rs = queryDAO.getTable(sql);
                    
            while(rs.next()){
                
                workflow = rs.getString("tag");
                wkfid = rs.getString("wkfid");

                wkfid = rs.getString("wkfid");sql = "SELECT table_name " +
                                 "FROM information_schema.columns\n " +
                                 "WHERE table_schema = '" + workflow + "'\n " +
                                 "AND table_name like 'o%'\n " +
                                 "GROUP BY table_name";        

                
                queryDAO = new QueryDB();
                rs1 = queryDAO.getTable(sql);

                while(rs1.next()){

                    table = workflow + "." + rs1.getString("table_name");  
                    //column  = rs.getString("column"); 

                    sql = "SELECT * FROM " + table;
                    queryDAO = new QueryDB();                    
                    rs2 = queryDAO.getTable(sql);

                    while(rs2.next()) {              

                        identifier = "d" + rs2.getString("key") + rs1.getString("table_name") + wkfid ;// + rs2.getString("taskid");    + rs2.getString("previoustaskid");
                        label = "name";   
                        type = "text"; 
                        value = rs2.getString("name"); 
                        //cont++;
                       // attrId = "a" + cont + identifier;  
                        
                        output = Prov.ENTITY + "(" + 
                                 identifier + 
                                 ",[prop(" + 
                                 Prov.TYPE + ",['" + ProvOne.DATA + "'])" +  
                                 ",prop(" +
                                 Prov.LABEL + ",'" +  label + "')" + 
                                 ",prop(" +
                                 Prov.TYPE + ",'" +  type + "')" +
                                 ",prop(" +
                                 Prov.VALUE + ",'" +  value + "')" +                         
                                 "]).\n";                         

                        FileManager.getBufferedWriter().write(output);                  
                    }

                }    
            }                
            rs.close();
            rs1.close();                                
            rs2.close();    
        } catch (IOException | SQLException ex) {
            Logger.getLogger(Data1.class.getName()).log(Level.SEVERE, null, ex);
        }
    }*/

}
