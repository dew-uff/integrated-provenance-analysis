package prospective.relationship;

import java.util.ArrayList;
import model.Prov;
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
public class HasSubProgram {    
    String workflowId, programId;
        
    public HasSubProgram(StringBuffer output, RDFManager rdf){        
        Statement stmt;
        Property  predicate; 
        RDFNode object;
        
       
        ArrayList<Resource> resourceList = rdf.getResource("type", "Workflow");
        
        for(Resource subject : resourceList){
            
            StmtIterator iter =  subject.listProperties();
            
            while(iter.hasNext()){
            
                stmt = iter.nextStatement(); 
                predicate = stmt.getPredicate();
                object    = stmt.getObject();
                String strObj;                                                                          
                
                if(predicate.getLocalName().equals("hasSubProcess")){                    
                
                    if (object instanceof Resource && object.asResource().getLocalName()!=null && !object.asResource().getLocalName().equals(""))
                        strObj = object.asResource().getLocalName();
                    else // object is a literal                    
                        strObj = object.toString();
                
                    workflowId = "'" + subject.toString() + "'";    
                    programId = "'" + strObj + "'"; 
                    generateFact(output);                                
                }                                            
              }                        
        }      
    }

    public void generateFact(StringBuffer output){ 
        output.append(Prov.HASSUBPROGRAM);
        output.append("(");
        output.append(workflowId);     
        output.append(",");
        output.append(programId);
        output.append(").\n");                
    }    
}
