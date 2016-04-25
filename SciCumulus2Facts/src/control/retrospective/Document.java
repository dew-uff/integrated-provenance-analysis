/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Prov;
import model.ProvOne;
/**
 *
 * @author nwm26
 */
//Document: identifier, label, value, type
public class Document {

    String identifier, value, label, type, workflow;
    String sql, table, wkfid;
    //int cont = 0;  
    ResultSet rs, rs1, rs2;
    QueryDB queryDAO;
        
    public Document(StringBuffer output){        
        
        try {
            
            sql = "SELECT wkfid, tag " +
                  "FROM cworkflow";           
            
            queryDAO = new QueryDB();
            rs = queryDAO.getTable(sql);
                    
            while(rs.next()){
                
                workflow = rs.getString("tag");
                wkfid = rs.getString("wkfid");

                wkfid = rs.getString("wkfid");
                
                sql = "SELECT table_name " +
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

                        identifier = "dc" + rs2.getString("key") + rs1.getString("table_name") + wkfid ;// + rs2.getString("taskid");    + rs2.getString("previoustaskid");
                        label = "fasta_file";   
                        type = "file"; 
                        value = rs2.getString("fasta_file"); 
                        
                        output.append(Prov.ENTITY);
                        output.append("(");
                        output.append(identifier);
                        output.append("s");
                        output.append(",[prop(");
                        output.append(Prov.TYPE);
                        output.append(",['");
                        output.append(ProvOne.DOCUMENT);
                        output.append("'])");
                        output.append(",prop(");
                        output.append(Prov.LABEL);
                        output.append(",'");
                        output.append(label);
                        output.append("')"); 
                        output.append(",prop(");
                        output.append(Prov.TYPE);
                        output.append(",'");
                        output.append(type);
                        output.append("')");
                        output.append(",prop(");
                        output.append(Prov.VALUE);
                        output.append(",'");
                        output.append(value);
                        output.append("')");                         
                        output.append("]).\n");                                   
                    }
                }    
            }                
            rs.close();
            rs1.close();                                
            rs2.close();    
        } catch (SQLException ex) {
            Logger.getLogger(Data1.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
