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
public class User {
    final String PROVONE = "p1:user";
    final String TYPE = "prov:type=";    
    final String sql = "Select machineid, hostname from emachine";
    String identifier, label;
    
    //Prov-One: ProcessExec: Identifier, Title, startTime, endTime, cached, completed        
    public User(StringBuffer output){
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {       
            while(rs.next()){                                
                identifier = rs.getString("machineid");
                label = rs.getString("hostname");
                generateFact(output);
            }            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }                
        queryDAO.closeDB();
    }
    
    public void generateFact(StringBuffer output){ 
            output.append(Prov.AGENT);
            output.append("(");
            output.append("u");
            output.append(identifier);
            output.append("s");
            output.append(",[prop(");
            output.append(Prov.TYPE);
            output.append(",['");
            output.append(ProvOne.USER);
            output.append("'])");  
            output.append(",prop(");
            output.append(Prov.LABEL);
            output.append(",'");
            output.append(label);
            output.append("')");                           
            output.append("]).\n");
            output.append("entity(d1s,[prop(prov:type,['provone:data']),prop(prov:label,'name'),prop(prov:type,'text'),prop(prov:value,'i3')]).");
            output.append("hasDefaultParam(pint2s,d1s).\n");
            output.append("used(ex51556,d97).");
            output.append("entity(pout91,[prop(prov:type,['provone:port']),prop(prov:label,'defined')]).");
            output.append("hasOutPort(pg9,d91).");
            output.append("hadOutPort(ex51556,d91).");
            
    /* output =         "member(X,[X|_]).\n" +
                             "member(X,[_|T]) :- member(X|T).\n" +
                             "entityType(ID,NAME,TYPE) :- entity(ID,[_,attribute(prov:type,TYPE),attribute(prov:label,NAME)|_]).";

     FileManager.getBufferedWriter().write(output); */            
        
    }

}
