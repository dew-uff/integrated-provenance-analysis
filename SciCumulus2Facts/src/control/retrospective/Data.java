/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Prov;
import model.ProvOne;

/**
 *
 * @author nwm26
 */
public class Data {
    
    String identifier, value, label;
    String sql; 
    ResultSet rs;
    QueryDB queryDAO;    
    
    public Data(StringBuffer output){        
        
        sql = "SELECT f.fileid, f.taskid, f.fname, f.fieldname " +
              "FROM efile f " + 
              "WHERE fname is not null and f.fname != 'EErr.txt' and f.fname != 'ERelation.txt' and f.fname != 'EResult.txt' " +
              "and f.fname != 'experiment.cmd' and f.fname != 'extractor.cmd' and f.fname != 'experiment.cmd~'  and f.fname != 'extractor.cmd~'";
              
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {              
                identifier = "dc" + rs.getString("fileid");
                
                if(rs.getString("fieldname").equals(""))
                    label = "FILE" + rs.getString("fileid");   
                else
                   label =  rs.getString("fieldname");
                
                value = rs.getString("fname"); 
                generateFact(output);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }            
    }   
    public void generateFact(StringBuffer output){
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
        output.append(Prov.VALUE);
        output.append(",'");
        output.append(value);
        output.append("')");   
        output.append("]).\n");            
    }      
}   
