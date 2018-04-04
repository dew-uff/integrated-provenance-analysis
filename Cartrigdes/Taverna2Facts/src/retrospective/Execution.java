package retrospective;

import java.util.ArrayList;
import model.Activity;
import model.Prov;
import model.ProvOne;
import model.WfMS;
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
//Execution: identifier, title, startTime, endTime, cached, completed 
public class Execution extends Activity {    
        
    public Execution(StringBuffer output, RDFManager rdf){        
        Statement stmt;
        Property  predicate; 
        RDFNode   object;         
       
        ArrayList<Resource> resourceList = rdf.getResource("type", "ProcessRun");
        
        for(Resource subject : resourceList){
            
            StmtIterator iter =  subject.listProperties();
            
            id = "'" + subject.toString() + "'";
            completed = 1;
            
            while(iter.hasNext()){
            
                stmt = iter.nextStatement(); 
                predicate = stmt.getPredicate();
                object    = stmt.getObject();
                String strObj;                                                                          
                
                if (object instanceof Resource && object.asResource().getLocalName()!=null && !object.asResource().getLocalName().equals(""))
                    strObj = object.asResource().getLocalName();
                else // object is a literal                    
                    strObj = object.toString();                                                                
                
                switch (predicate.getLocalName()){
                    case "label": label = strObj;
                        break;
                    case "startedAtTime": startTime = strObj.substring(0,29);
                        break;
                    case "endedAtTime": endTime = strObj.substring(0,29);                                                        
                        break;
                }                                            
              }
            generateFact(output); 
        } 
    }                

    public void generateFact(StringBuffer output){ 
        output.append(Prov.ACTIVITY);
        output.append("(");
        output.append(id);
        output.append(",[prop(");
        output.append(Prov.TYPE);
        output.append(",['");
        output.append(ProvOne.EXECUTION);
        output.append("'])");  
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",'");
        output.append(label);
        output.append("')"); 
        output.append(",prop(");
        output.append(Prov.STARTTIME);
        output.append(",'");
        output.append(startTime);
        output.append("')");
        output.append(",prop(");
        output.append(Prov.ENDTIME);
        output.append(",'");
        output.append(endTime);
        output.append("')");    
        output.append(",prop(");
        output.append(WfMS.COMPLETED);
        output.append(",'");
        output.append(completed);
        output.append("')");                           
        output.append("]).\n");                  
    }    
}
