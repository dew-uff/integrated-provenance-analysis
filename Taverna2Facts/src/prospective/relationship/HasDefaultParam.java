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
public class HasDefaultParam {
    String dataId, portId;
    boolean param = true;
        
    public HasDefaultParam(StringBuffer output, RDFManager rdf){        
        Statement stmt;
        Property  predicate; 
        RDFNode   object;   
        
        ArrayList<Resource> resourceList = rdf.getResource("type", "Artifact");
        
        for(Resource subject : resourceList){
            
            StmtIterator iter =  subject.listProperties();
            
            dataId = "'" + subject + "'";
            
            while(iter.hasNext()){
            
                stmt = iter.nextStatement(); 
                predicate = stmt.getPredicate();
                object    = stmt.getObject();
                String strObj;
                                
                strObj = object.toString();  

                if(predicate.getLocalName().equals("wasOutputFrom"))
                    param = false;                    
                
                if(predicate.getLocalName().equals("describedByParameter"))
                    portId = strObj;                
                }
            if(param)                             
                generateFact(output);                    
            else
                param = true;            
        } 
    }               
                   
    public void generateFact(StringBuffer output){                        
        output.append(Prov.HASDEFAULTPARAM);
        output.append("('");
        output.append(portId);
        output.append("',");
        output.append(dataId);
        output.append(").\n");                   
    }
}
