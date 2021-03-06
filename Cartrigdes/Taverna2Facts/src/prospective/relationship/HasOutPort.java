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
 * @author nwm26
 */
public class HasOutPort {
    String dataId, programId, portId;
    
    public HasOutPort(StringBuffer output, RDFManager rdf){        
        Statement stmt;
        Property  predicate; 
        RDFNode   object;          
        
        ArrayList<Resource> resourceList = rdf.getResource("type", "Process");
        
        for(Resource subject : resourceList){
            
            StmtIterator iter =  subject.listProperties();
            
            while(iter.hasNext()){
            
                stmt = iter.nextStatement(); 
                predicate = stmt.getPredicate();
                object    = stmt.getObject();

                if(predicate.getLocalName().equals("hasOutput")){                                                            
                    programId = "'" + subject.toString() + "'";
                    portId = "'" + object.toString() + "'";                    
                    generateFact(output);
                    }
                }                                            
              }   
        rdf.closeModel();
    }                   
                   
    public void generateFact(StringBuffer output){                        
        output.append(Prov.HASOUTPORT);
        output.append("(");
        output.append(programId);
        output.append(",");
        output.append(portId);
        output.append(").\n");                   
    }
}
