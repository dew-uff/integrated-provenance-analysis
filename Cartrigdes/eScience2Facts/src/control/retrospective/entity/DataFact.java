/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.entity;

import model.Data;
import model.Prov;
import model.ProvOne;

/**
 *
 * @author nwm26
 */
public class DataFact {
    
    public void printDataFact(Data data, StringBuffer output){
        output.append(Prov.ENTITY);
        output.append("("); 
        output.append(data.getId());
        output.append(",[prop("); 
        output.append(Prov.TYPE + ",['" + ProvOne.DATA + "'])");  
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",'");
        output.append(data.getLabel());
        output.append("')"); 
        output.append(",prop(");
        output.append(Prov.TYPE);
        output.append(",'");
        output.append(data.getType());
        output.append("')");
        output.append(",prop(");
        output.append(Prov.VALUE);
        output.append(",'");
        output.append(data.getValue());
        output.append("')");                         
        output.append("]).\n");                  
    }    
}
