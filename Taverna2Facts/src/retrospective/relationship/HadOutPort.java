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
public class HadOutPort {
    String dataId, executionId, portId;
    
 /*   public HadOutPort(StringBuffer output, RDFManager rdf){        
        Statement stmt, stmt2;
        Property  predicate; 
        RDFNode   object;          
        
        ArrayList<Resource> resourceList = rdf.getResource("type", "Role");
        
        for(Resource subject : resourceList){
            
            StmtIterator iter =  subject.listProperties();
            
            while(iter.hasNext()){
            
                stmt = iter.nextStatement(); 
                predicate = stmt.getPredicate();
                object    = stmt.getObject();

                if(predicate.getLocalName().equals("type") && object.asResource().getLocalName().equals("Output")){
                    
                    ArrayList<Resource> resourceList2 = rdf.getResource("hadRole", subject.getLocalName());  //hadRole subject                                        
                                        
                    StmtIterator iterHadRole =  resourceList2.get(0).listProperties();
            
                    while(iterHadRole.hasNext()){  
                        stmt2 = iterHadRole.nextStatement(); 
                        predicate = stmt2.getPredicate();
                        object    = stmt2.getObject();   
                        
                        if(predicate.getLocalName().equals("activity")){
                            executionId = object.toString();                                        
                            portId = subject.toString();                    
                            generateFact(output);  
                        }
                    }
                    }
                }                                            
              }             
    } */     
    
    public HadOutPort(StringBuffer output, RDFManager rdf){        
        Statement stmt, stmt2;
        Property  predicate; 
        RDFNode   object;          
        
        ArrayList<Resource> resourceList = rdf.getResource("type", "Generation");
        
        for(Resource subject : resourceList){
            
            StmtIterator iter =  subject.listProperties();
            
            while(iter.hasNext()){
                
            
                stmt = iter.nextStatement(); 
                predicate = stmt.getPredicate();
                object    = stmt.getObject();
                
                if(predicate.getLocalName().equals("activity")) 
                    executionId = "'" + object.toString() + "'";                       
                                
                 if(predicate.getLocalName().equals("hadRole")){//generateFact only if hadRole exist. If hadRole does not exist, executionId value ('if' above) is not used and it is replaced in the next interation
                    portId = "'" + object.toString() + "'";                      
                    generateFact(output); 
                }
            }
        }
    }                                                         
    
                   
    public void generateFact(StringBuffer output){                        
        output.append(ProvOne.HADOUTPORT);
        output.append("(");
        output.append(executionId);
        output.append(",");
        output.append(portId);
        output.append(").\n");                   
    }
}
