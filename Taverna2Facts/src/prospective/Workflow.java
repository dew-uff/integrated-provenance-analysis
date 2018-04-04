package prospective;

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
public class Workflow extends Entity {    
        
    public Workflow(StringBuffer output,String dataSetId, RDFManager rdf){        
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
                
                if (object instanceof Resource && object.asResource().getLocalName()!=null && !object.asResource().getLocalName().equals(""))
                    strObj = object.asResource().getLocalName();
                else // object is a literal                    
                    strObj = object.toString();
                
                id = "'" + subject.toString() + "'";
                //completed = 1;
                
                if(predicate.getLocalName().equals("label"))
                    label = strObj;                                     
              }
            generateFact(output, dataSetId); 
        } 
    }                

    public void generateFact(StringBuffer output, String dataSetId){        
        output.append(Prov.ENTITY);
        output.append("(");
        output.append(id);     
        output.append(",[prop(");
        output.append(Prov.TYPE);
        output.append(",['");
        output.append(Prov.PLAN);
        output.append("','");
        output.append(ProvOne.WORKFLOW);
        output.append("'])");
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",'");
        output.append(label);
        output.append("')"); 
        //output.append(",prop(");
        //output.append(WfMS.PACKAGE);
        //output.append(",'");
        //output.append(package_ );
        //output.append("')"); 
        output.append("]).\n"); 

        output.append("hasDataSet(");
        output.append(id);
        output.append(",");
        output.append(dataSetId);
        output.append(").\n");  
    }    
}
