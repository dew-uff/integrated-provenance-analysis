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
public class UserFact {
    
    public void printUserFact(Node node, StringBuffer output){
        output.append(Prov.AGENT);
        output.append("(ag");
        output.append(node.getId());
        output.append(",[prop(");
        output.append(Prov.TYPE + ",['"+ ProvOne.USER + "'])");
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",'");
        output.append(node.getProperty("name", null));
        output.append("')");
        output.append( "]).\n");                           
    }    
}
