/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.relationship;

import model.Prov;
import org.neo4j.graphdb.Node;

/**
 *
 * @author nwm26
 */
public class Relationships {
    String inFile, outFile;
    
    public void setRelationship(Node fromNode, Node toNode, String relType, StringBuffer output){
        
        switch (relType){
            case "USED":                
                if(toNode.getProperty("TYPE", null).equals("Service Run")){
                    relType = Prov.WASINFORMEDBY;
                    print("ex" + fromNode.getId(), "ex" + toNode.getId(), relType, output);
                } else {
                    relType = Prov.USED;  
                    print("ex" + fromNode.getId(), "dc" + toNode.getId(), relType, output);
                    inFile = "dc" + toNode.getId();
                    relType = "wasDerivedFrom";
                    print(outFile, inFile, relType, output);                    
                }                
                break;                                
            case "WAS_GENERATED_BY":
                if(fromNode.getProperty("TYPE", null).equals("Service Run")){
                    relType = Prov.WASINFORMEDBY;
                    print("ex" + fromNode.getId(), "ex" + toNode.getId(), relType, output);
                } else {
                    relType = Prov.WASGENERATEDBY;
                    print("dc" + fromNode.getId(), "ex" + toNode.getId(), relType, output);
                    outFile = "dc" + fromNode.getId();
                }
                break;
            case "CONTAINED":
                relType = Prov.WASPARTOF;
                print("ex" + toNode.getId(), "ew" + fromNode.getId(), relType, output);
                break;
            case "WAS_CONTROLLED_BY": //verificar pois nao tem nenhum
                relType = Prov.WASCONTROLLEDBY;
                print("pg" + fromNode.getId(), "ag" + toNode.getId(), relType, output);
                break;          
            /*case "RUN_OF":     
                relType = Prov.WASDERIVEDFROM;
                print("ew" + fromNode.getId(), "ewV" + toNode.getId(), relType, output);
                break;
            case "INSTANCE_OF":                
                relType = Prov.WASDERIVEDFROM;
                print("ex" + fromNode.getId(), "exV" + toNode.getId(), relType, output);
                break;
            case "INVOKED_BY":*/
        } 
    }      
    
    public void print(String id1,String id2, String relType, StringBuffer output){
        output.append(relType);
        output.append("(");
        output.append(id1);        
        output.append(",");
        output.append(id2);; 
        output.append(").\n");        
    }
    
}
