package retrospective;

import java.util.ArrayList;
import model.Entity;
import model.Prov;
import model.ProvOne;
import org.apache.jena.rdf.model.Property;
import org.apache.jena.rdf.model.RDFNode;
import org.apache.jena.rdf.model.Resource;
import org.apache.jena.rdf.model.Statement;
import org.apache.jena.rdf.model.StmtIterator;
import utils.RDFManager;

/**
 *
 * @author well
 */
//Data and Document
public class Data extends Entity {
    
    public Data(StringBuffer output, RDFManager rdf){        
        Statement stmt;
        Property  predicate; 
        RDFNode   object;   
        type = "";
        
        ArrayList<Resource> resourceList = rdf.getResource("type", "Artifact");
        
        for(Resource subject : resourceList){
            
            StmtIterator iter =  subject.listProperties();
            
            id = "'" + subject.toString() + "'";
            
            while(iter.hasNext()){
            
                stmt = iter.nextStatement(); 
                predicate = stmt.getPredicate();
                object    = stmt.getObject();
                String strObj;
                
                if (object instanceof Resource && object.asResource().getLocalName()!=null && !object.asResource().getLocalName().equals(""))
                    strObj = object.asResource().getLocalName();
                else // object is a literal                    
                    strObj = object.toString();                
                
                switch (predicate.getLocalName()){
                    case "describedByParameter": label = strObj;
                        break;
                    case "content": value = strObj;
                        if(strObj.contains(".txt") || strObj.contains(".doc") || strObj.contains(".pdf") || strObj.contains(".csv") || strObj.contains(".fasta")) //&& !strObj.contains(".pbm")   //type = strObj.substring(strObj.indexOf(".")+1, strObj.length());                        
                            type = "File";
                        else if(strObj.contains(".png") || strObj.contains(".jpg") || strObj.contains(".jpeg") || strObj.contains(".bmp") || strObj.contains(".gif") || strObj.contains(".tif"))
                            type = "Visualization";                                            
                        break;
                }                                            
              }
            generateFact(output); 
        } 
    }      
             
    public void generateFact(StringBuffer output){
        output.append(Prov.ENTITY);
        output.append("(");
        output.append(id); 
        output.append(",[prop(");                         
        output.append(Prov.TYPE);
        output.append(",['");
        if(type.equals("File"))
            output.append(ProvOne.DOCUMENT);
        else if(type.equals("Visualization"))
            output.append(ProvOne.VISUALIZATION);
        else
            output.append(ProvOne.DATA);
        //output.append("','");
        //output.append(type);
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
