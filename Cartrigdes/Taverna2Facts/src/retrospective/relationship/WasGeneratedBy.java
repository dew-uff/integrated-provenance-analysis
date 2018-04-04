package retrospective.relationship;

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
public class WasGeneratedBy {
    String dataId, executionId;
    
    public WasGeneratedBy(StringBuffer output, RDFManager rdf){        

        Statement stmt;
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
                    dataId =  "'" + subject.toString() + "'";
                    executionId = "'" + object.toString() + "'";   
                    generateFact(output);
                }                                            
              }             
        } 
    }                   
                   
    public void generateFact(StringBuffer output){ 
                       
        output.append(Prov.WASGENERATEDBY);
        output.append("(");        
        output.append(dataId);
        output.append(",");
        output.append(executionId);
        output.append(").\n");                   
    }
}
