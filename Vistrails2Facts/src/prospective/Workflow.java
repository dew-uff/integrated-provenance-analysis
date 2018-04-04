/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prospective;

import DAO.QueryDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Entity;
import model.Prov;
import model.ProvOne;

/**
 *
 * @author Well
 */
public class Workflow extends Entity {
           
    public Workflow(StringBuffer output){
        final String sql = "Select id, name from workflow";                        
        
        try {        
            QueryDB queryDAO = new QueryDB();
            ResultSet rs = queryDAO.getTable(sql);            

                while(rs.next()){                    
                    setId("w" + rs.getString("id"));
                    setLabel("'" + rs.getString("name") + "'");
                    setType("prov:plan");
                    generateFact(output);
                }
                rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public void generateFact(StringBuffer output){
        output.append(Prov.ENTITY);
        output.append("(");
        output.append(getId()); 
        output.append("v");
        output.append(",[prop("); 
        output.append(Prov.TYPE);
        output.append(",['"); 
        output.append(getType());
        output.append("'");                           
        output.append(",'");
        output.append(ProvOne.WORKFLOW);
        output.append("'])");  
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",");
        output.append(getLabel());
        output.append(")"); 
        output.append("]).\n"); 
        
        output.append("hasDataSet(");
        output.append(getId());
        output.append("v");
        output.append(", 2).\n");         
    }       

    public void setId(String id){
        this.id = id;
    }
    
    public String getId(){
        return id;
    }       
    
    public void setType(String type){
        this.type = type;
    }
    
    public String getType(){
        return type;
    }   
    
    public void setLabel(String label){
        this.label = label;
    }
    
    public String getLabel(){
        return label;
    }
    
    
    
    
}
