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
public class WasDerivedFrom {
    String d1, d2;
    String sql; 
    ResultSet rs;
    QueryDB queryDAO;    
    
    public WasDerivedFrom(StringBuffer output){
        
        sql = "SELECT f.fileid, ff.fileid\n" +
            "FROM efile f, cmapping m, (Select fileid, taskid from efile) ff\n" +
            "WHERE f.taskid = m.previousid\n" +
            "and ff.taskid = m.nextid\n" +
            "and fname is not null and fname != 'EErr.txt' and fname != 'ERelation.txt' and fname != 'EResult.txt' \n" +
            "and fname != 'experiment.cmd' and fname != 'extractor.cmd' and fname != 'experiment.cmd~'  and fname != 'extractor.cmd~'\n" +
            "order by f.fileid, ff.fileid";
              
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {                 
                d1 = "dc" + rs.getString(2);
                d2 = "dc" + rs.getString(1);              
                generateFact(output);
             }
        } catch(SQLException e) {
            e.printStackTrace();
        }                                      
    }      
    public void generateFact(StringBuffer output){                 
        output.append(Prov.WASDERIVEDFROM);
        output.append("(");        
        output.append(d1);
        output.append("s");
        output.append(",");
        output.append(d2);
        output.append("s");
        output.append(").\n");                   
    }    
}
