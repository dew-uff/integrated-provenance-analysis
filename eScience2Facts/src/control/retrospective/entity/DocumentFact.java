/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.entity;

import model.Prov;
import model.ProvOne;
import org.neo4j.graphdb.Node;

/**
 *
 * @author nwm26
 */
public class DocumentFact {
    
    public void printDocumentFact(Node node, StringBuffer output){
        output.append(Prov.ENTITY);
        output.append("(dc"); 
        output.append(node.getId());
        output.append(",[prop("); 
        output.append(Prov.TYPE + ",['" + ProvOne.DOCUMENT + "'])");  
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",'");
        output.append(node.getProperty("name", null));
        output.append("')"); 
        output.append(",prop(");
        output.append(Prov.TYPE);
        output.append(",'");
        output.append(node.getProperty("type", null));
        output.append("')");
        output.append(",prop(");
        output.append(Prov.VALUE);
        output.append(",'");
        output.append(node.getProperty("value", null));
        output.append("')");                         
        output.append("]).\n");                  
    }    
}
