/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.relationship;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Prov;

/**
 *
 * @author nwm26
 */
public class WasGeneratedBy {
    String document, execution;
    String sql; 
    ResultSet rs;
    QueryDB queryDAO;    
    
    public WasGeneratedBy(StringBuffer output){
        
        sql = "SELECT f.fileid, f.taskid, f.fname, f.fieldname " +
              "FROM efile f " + 
              "WHERE f.fname != 'EErr.txt' and f.fname != 'ERelation.txt' and f.fname != 'EResult.txt' " +
              "and f.fname != 'experiment.cmd' and f.fname != 'extractor.cmd' and f.fname != 'experiment.cmd~'  and f.fname != 'extractor.cmd~'";
              
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {              
                document = "dc" + rs.getString("fileid");
                execution = "ex" + rs.getString("taskid");                
                generateFact(output);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }                                      
    }      
    public void generateFact(StringBuffer output){ 
        
        /*output.append(Prov.WASGENERATEDBY);
        output.append("(");        
        output.append(data);
        output.append(",");
        output.append(execution);
        output.append(").\n"); */
                
        output.append(Prov.WASGENERATEDBY);
        output.append("(");        
        output.append(document);
        output.append("s");
        output.append(",");
        output.append(execution);
        output.append("s");
        output.append(").\n");                   
    }
}
