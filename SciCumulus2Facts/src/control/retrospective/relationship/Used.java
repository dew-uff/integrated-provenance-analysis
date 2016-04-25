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
import model.Prov;
import model.ProvOne;
import utils.FileManager;

/**
 *
 * @author nwm26
 */
public class Used {
    String document, execution;
    String sql; 
    ResultSet rs;
    QueryDB queryDAO;  
    
    public Used(StringBuffer output){
        
/*SELECT f.fileid, f.taskid, f.fname
FROM efile f, eactivation a, crelation r, cmapping m
where f.taskid = a.taskid
and r.relid = m.crelid
and m.nextid = a.taskid
and f.fname != 'EErr.txt' and f.fname != 'ERelation.txt' and f.fname != 'EResult.txt'"
order by taskid*/        
        
        sql = "SELECT f.fileid, m.previousid, m.nextid, f.fname " +
              "FROM efile f, cmapping m " +
              "WHERE m.previousid = f.taskid " +
              "and m.nextid > 0 " +
              "and f.fname != 'EErr.txt' and f.fname != 'ERelation.txt' and f.fname != 'EResult.txt' " +
              "ORDER BY m.previousid";
   
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {              
                document = "dc" + rs.getString("fileid");
                execution = "ex" + rs.getString("nextid");                
                generateFact(output);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }                                      
    }      
    public void generateFact(StringBuffer output){ 
        
        /*output.append(Prov.USED);
        output.append("(");        
        output.append(execution);
        output.append(",");
        output.append(data);
        output.append(").\n"); */
                
        output.append(Prov.USED);
        output.append("(");        
        output.append(execution);
        output.append("s");
        output.append(",");
        output.append(document);
        output.append("s");
        output.append(").\n");                   
    }
}

