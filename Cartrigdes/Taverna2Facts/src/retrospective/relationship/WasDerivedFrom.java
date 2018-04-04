package retrospective.relationship;

import java.util.ArrayList;
import java.util.concurrent.locks.StampedLock;
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
public class WasDerivedFrom {
    String inputId, outputId;
    
    public WasDerivedFrom(StringBuffer output, RDFManager rdf){        

        Statement stmt, stmt2;
        Property  predicate; 
        RDFNode   object;          
        
        ArrayList<Resource> resourceList = rdf.getResource("type", "Artifact");
        
        for(Resource subject : resourceList){
            
            StmtIterator iter =  subject.listProperties();
            
            while(iter.hasNext()){
            
                stmt = iter.nextStatement(); 
                predicate = stmt.getPredicate();
                object    = stmt.getObject();

                if(predicate.getLocalName().equals("wasGeneratedBy")){
                    
                    StmtIterator iterExecution =  object.asResource().listProperties();
                    
                    while(iterExecution.hasNext()){
                        stmt2 = iterExecution.nextStatement(); 
                        predicate = stmt2.getPredicate();
                        object    = stmt2.getObject();
                        if(predicate.getLocalName().equals("used")){                            
                            inputId = "'" + object.toString() + "'";
                            outputId = "'" + subject.toString() + "'";
                            generateFact(output);                            
                        }
                            
                    }

                }                                            
              }             
        } 
    }                   
                   
    public void generateFact(StringBuffer output){ 
                       
        output.append(Prov.WASDERIVEDFROM);
        output.append("(");        
        output.append(inputId);
        output.append(",");
        output.append(outputId);
        output.append(").\n");                   
    }
}
