package retrospective.relationship;

import java.util.ArrayList;
import model.ProvOne;
import org.apache.jena.rdf.model.Property;
import org.apache.jena.rdf.model.RDFNode;
import org.apache.jena.rdf.model.Resource;
import org.apache.jena.rdf.model.Statement;
import org.apache.jena.rdf.model.StmtIterator;
import utils.RDFManager;

/**
 *
 * @author nwm26
 */
public class HadInPort {
    String dataId, executionId, portId;
    
    public HadInPort(StringBuffer output, RDFManager rdf){        
        Statement stmt;
        Property  predicate; 
        RDFNode   object;          
        
        ArrayList<Resource> resourceList = rdf.getResource("type", "Role");
        
        for(Resource subject : resourceList){
            
            StmtIterator iter =  subject.listProperties();
            
            while(iter.hasNext()){
            
                stmt = iter.nextStatement(); 
                predicate = stmt.getPredicate();
                object    = stmt.getObject();

                if(predicate.getLocalName().equals("type") && object.asResource().getLocalName().equals("Input")){
                    
                    ArrayList<Resource> resourceList2 = rdf.getResource("hadRole", subject.getLocalName());  //hadRole subject                                        
                    ArrayList<Resource> resourceList3 = rdf.getResource("qualifiedUsage", resourceList2.get(0)); // qualifiedUsage subject                                                            
                    
                    if(!resourceList3.isEmpty())
                        executionId = "'" + resourceList3.get(0).toString() + "'";  
                                                                                  
                    portId = "'" + subject.toString() + "'";     
                    generateFact(output);
                    }
                }                                            
              }             
    }                   
                   
    public void generateFact(StringBuffer output){                        
        output.append(ProvOne.HADINPORT);
        output.append("(");
        output.append(executionId);
        output.append(",");
        output.append(portId);
        output.append(").\n");                   
    }
}
