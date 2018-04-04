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
        
    String identifier, value, label, sql;
    ResultSet rs, rs2;
    QueryDB queryDAO;    
    
    //Tem que inserir um novo campo "fieldid" de auto-incremento na tabela cfield
    public Data(StringBuffer output, String database2){   
        sql =   "Select f.fieldid, r.relid, r.wkfid, ewkfid, r.rname, r.rtype, fname\n" +
                "from crelation r, cfield f, eworkflow ew, cworkflow w\n" +
                "where r.relid = f.relid\n" +
                "and r.wkfid = w.wkfid\n" +
                "and ew.tag = w.tag\n" +
                "order by ewkfid, f.fieldid";           
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
                
        try {
            while(rs.next()) {              
                sql =  "SELECT ewkfid, key, " + rs.getString("fname") + 
                        " from " +  database2 + "." + rs.getString("rname") +
                        " where ewkfid = " + rs.getString("ewkfid") + 
                        " order by ewkfid limit 1";                
                rs2 = queryDAO.getTable(sql); 
                while(rs2.next()){
                    //int number_of_columns = rs2.getMetaData().getColumnCount();                                
                    identifier = "d" + rs.getString("fieldid") + rs.getString("ewkfid");                
                    value = rs2.getString(rs.getString("fname")); 
                    label = rs.getString("fname");
                    generateFact(output);    
                }    
            }    
            rs.close();
            rs2.close();   
        } catch(SQLException e) {
            e.printStackTrace();
        } 
        dataFile(output);                   
    } 
    
    public void dataFile(StringBuffer output){
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
        output.append(ProvOne.DATA);
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
