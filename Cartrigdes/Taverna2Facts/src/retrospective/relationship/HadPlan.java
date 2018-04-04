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
public class HadPlan {
    String dataId, executionId, programId;
    
    public HadPlan(StringBuffer output, RDFManager rdf){        
        Statement stmt;
        Property  predicate; 
        RDFNode   object;          
        
        ArrayList<Resource> resourceList = rdf.getResource("type", "ProcessRun"); 
        
        for(Resource subject : resourceList){
            
            StmtIterator iter =  subject.listProperties();
            
            while(iter.hasNext()){
            
                stmt = iter.nextStatement(); 
                predicate = stmt.getPredicate();
                object    = stmt.getObject();

                if(predicate.getLocalName().equals("describedByProcess")){
                    executionId = "'" + subject.toString() + "'";
                    programId = "'" + object.toString() + "'";                    
                    generateFact(output);
                }                                            
              }             
        }
        hadPlanWEx(output, rdf);
    }     
    //WorkflowRun
    public void hadPlanWEx(StringBuffer output, RDFManager rdf){        
        Statement stmt;
        Property  predicate; 
        RDFNode   object;          
        
        ArrayList<Resource> resourceList = rdf.getResource("type", "WorkflowRun");
        
        for(Resource subject : resourceList){
            
            StmtIterator iter =  subject.listProperties();
            
            while(iter.hasNext()){
            
                stmt = iter.nextStatement(); 
                predicate = stmt.getPredicate();
                object    = stmt.getObject();

                if(predicate.getLocalName().equals("describedByWorkflow")){
                    executionId = "'" + subject.toString() + "'";
                    programId = "'" + object.toString() + "'";                    
                    generateFact(output);
                }                                            
              }             
        } 
    }      
                   
    public void generateFact(StringBuffer output){                        
        output.append(ProvOne.HADPLAN);
        output.append("(");        
        output.append(executionId);
        output.append(",");
        output.append(programId);
        output.append(").\n");                   
    }
}
