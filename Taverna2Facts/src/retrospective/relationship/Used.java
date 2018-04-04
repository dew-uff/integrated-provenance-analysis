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
public class Used {
    String dataId, executionId;
    
    public Used(StringBuffer output, RDFManager rdf){        
        Statement stmt;
        Property  predicate; 
        RDFNode   object;          
        
        ArrayList<Resource> resourceList = rdf.getResource("type", "ProcessRun"); //Workflow run
        
        for(Resource subject : resourceList){
            
            StmtIterator iter =  subject.listProperties();
            
            while(iter.hasNext()){
            
                stmt = iter.nextStatement(); 
                predicate = stmt.getPredicate();
                object    = stmt.getObject();

                if(predicate.getLocalName().equals("used")){
                    executionId = "'" + subject.toString() + "'";
                    dataId = "'" + object.toString() + "'";                    
                    generateFact(output);
                }                                            
              }             
        } 
    }                   
                   
    public void generateFact(StringBuffer output){ 
                       
        output.append(Prov.USED);
        output.append("(");        
        output.append(executionId);
        output.append(",");
        output.append(dataId);
        output.append(").\n");                   
    }
}
