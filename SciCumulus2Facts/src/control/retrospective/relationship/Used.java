/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.relationship;

import DAO.QueryDB;
import control.prospective.relationship.HasDefaultParam;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Prov;

/**
 *
 * @author nwm26
 */
public class Used {
    String data, execution, sql;   
    ResultSet rs, rs2;
    QueryDB queryDAO; 
    
    public Used(StringBuffer output, String database2){
        //get all fields of all relations (ports)
        sql =   "Select f.fieldid, r.relid, r.wkfid, ewkfid, r.rname, r.rtype, fname, w.wkfid\n" +
                "from crelation r, cfield f, eworkflow ew, cworkflow w\n" +
                "where r.relid = f.relid\n" +
                "and r.wkfid = w.wkfid\n" +
                "and ew.tag = w.tag\n" +
                "order by w.wkfid, ewkfid, f.fieldid";                  
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
                
        try {            
            while(rs.next()) { 
                //if an execution (nexttaskid) used an output field/value
                if(rs.getString("rtype").equals("INTERMEDIARY")){
                    sql =   "SELECT ewkfid, key, nexttaskid, " + rs.getString("fname") + 
                            " from " +  database2 + "." + rs.getString("rname") +
                            " where ewkfid = " + rs.getString("ewkfid") + 
                            " order by ewkfid, nexttaskid";
                    rs2 = queryDAO.getTable(sql); 
                    while(rs2.next()){
                        execution = "ex" + rs2.getString("nexttaskid");
                        data = "d" + rs.getString("fieldid") + rs.getString("ewkfid");                
                        generateFact(output);
                        
                        //if first execution - need change because it can has more than one field
                        if(rs.isFirst() && rs2.isFirst()){
                            execution = "ew" + rs2.getString("ewkfid");
                            data = "d" + rs.getString("fieldid") + rs.getString("ewkfid");                
                            generateFact(output); 
                            new HasDefaultParam(rs.getString("relid"), data, output);
                        }
                        
                    }                      
                //if an execution (taskid) used an output field/value - need change because it can has more than one field
                }else if(rs.getString("rtype").equals("INPUT")){
                    sql =   "SELECT ewkfid, key, taskid, " + rs.getString("fname") + 
                            " from " +  database2 + "." + rs.getString("rname") +
                            " where ewkfid = " + rs.getString("ewkfid") + 
                            " order by ewkfid, taskid"; 
                    rs2 = queryDAO.getTable(sql); 
                    while(rs2.next()){
                        execution = "ex" + rs2.getString("taskid");
                        data = "d" + rs.getString("fieldid") + rs.getString("ewkfid");                
                        generateFact(output);    
                        
                        //if first execution
                        if(rs.isFirst() && rs2.isFirst()){
                            execution = "ew" + rs2.getString("ewkfid");
                            data = "d" + rs.getString("fieldid") + rs.getString("ewkfid");                
                            generateFact(output);
                            new HasDefaultParam(rs.getString("relid"), data, output);
                        }
                        
                    }                     
                }                   
            }    
            rs.close();
            rs2.close();              
        } catch(SQLException e) {
            e.printStackTrace();
        } 
        usedFile(output);                                               
    }      
    
    public void usedFile(StringBuffer output){   
        //if an execution (nextid) used an output file
        sql = "SELECT f.fileid, m.previousid, m.nextid, f.fname \n" +
              "FROM efile f, cmapping m \n" +
              "WHERE m.previousid = f.taskid \n" +
              "and m.nextid > 0 \n" +
              "and f.fname != 'EErr.txt' and f.fname != 'ERelation.txt' and f.fname != 'EResult.txt' \n" +
              "ORDER BY m.previousid";
   
        queryDAO = new QueryDB();                    
        rs = queryDAO.getTable(sql);
        try {
            while(rs.next()) {              
                data = "dc" + rs.getString("fileid");
                execution = "ex" + rs.getString("nextid");                
                generateFact(output);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }         
    }
    
    public void generateFact(StringBuffer output){            
        output.append(Prov.USED);
        output.append("(");        
        output.append(execution);
        output.append("s");
        output.append(",");
        output.append(data);
        output.append("s");
        output.append(").\n");                   
    }    
}

