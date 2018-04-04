/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.relationship;

import DAO.QueryDB;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Prov;
import utils.FileManager;
/**
 *
 * @author nwm26
 */
//WasGenerated: entity (data, document, visualization), activity (execution)
public class WasGeneratedBy1 {

    String output, data, document, execution, workflow;
    String sql, table, column, previousTable, wkfid;
    int cont = 0;  
    ResultSet rs, rs1, rs2;
    QueryDB queryDAO, queryDAO1, queryDAO2 ;
        
    public WasGeneratedBy1(){        
        
        /*try {
            
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

                
                queryDAO1 = new QueryDB();
                rs1 = queryDAO1.getTable(sql);

                while(rs1.next()){

                    table = workflow + "." + rs1.getString("table_name");  

                    sql = "SELECT * FROM " + table;
                    queryDAO2 = new QueryDB();                    
                    rs2 = queryDAO2.getTable(sql);

                    while(rs2.next()) {              

                        data = "d" + rs2.getString("key") + rs1.getString("table_name") + wkfid;
                        document = "dc" + rs2.getString("key") + rs1.getString("table_name") + wkfid ;                        
                                          
                        if(rs2.getMetaData().getColumnName(3).equals("taskid"))                       
                            execution =  "ex" + rs2.getString("taskid");   
                        else
                            execution = "ex" + rs2.getString("previoustaskid");                        
                        
                        output = Prov.WASGENERATEDBY + "(" + 
                                 data + "," +  execution + ").\n" + 
                                 Prov.WASGENERATEDBY + "(" + 
                                 document + "," +  execution + ").\n";                           

                        FileManager.getBufferedWriter().write(output);                  
                    }

                }    
            }                
            rs.close();                                
            rs1.close();                                
            rs2.close();    
        } catch (IOException | SQLException ex) {
            Logger.getLogger(WasGeneratedBy1.class.getName()).log(Level.SEVERE, null, ex);
        }*/
    }

}
