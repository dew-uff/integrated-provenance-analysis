/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package retrospective;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Prov;
import model.ProvOne;
import model.Agent;

/**
 *
 * @author well
 */
public class User extends Agent {
    final String sql = "Select id, entity_id, name from machine";
       
    public User(StringBuffer output){
        
        QueryDB queryDAO = new QueryDB();
        ResultSet rs = queryDAO.getTable(sql);
        
        try {       
            while(rs.next()){                                
                id = rs.getString("id") + rs.getString("entity_id");
                label = rs.getString("name");
                generateFact(output);
            }            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }                
        //queryDAO.closeDB();
    }
    
    public void generateFact(StringBuffer output){ 
            output.append(Prov.AGENT);
            output.append("(");
            output.append("u");
            output.append(id);
            output.append("v");
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

            
    /* output =         "member(X,[X|_]).\n" +
                             "member(X,[_|T]) :- member(X|T).\n" +
                             "entityType(ID,NAME,TYPE) :- entity(ID,[_,attribute(prov:type,TYPE),attribute(prov:label,NAME)|_]).";

     FileManager.getBufferedWriter().write(output); */            
        
    }

}
