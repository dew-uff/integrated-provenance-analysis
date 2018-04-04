package retrospective;

import java.util.ArrayList;
import model.Prov;
import model.ProvOne;
import model.Agent;
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
//User and HadPlan
public class User extends Agent {   
    
    public User(StringBuffer output, RDFManager rdf){        

        Statement stmt;
        Property  predicate; 
        RDFNode   object, previousObj=null;  
        String strObj;       
        
        ArrayList<Resource> resourceList = rdf.getResource("type", "Association");
        
        for(Resource subject : resourceList){
                                           
                StmtIterator iter =  subject.listProperties();
                
                while(iter.hasNext()){

                    stmt = iter.nextStatement(); 
                    predicate = stmt.getPredicate();
                    object    = stmt.getObject();
                     
                    if (object instanceof Resource && object.asResource().getLocalName()!=null && !object.asResource().getLocalName().equals(""))
                        strObj = object.asResource().getLocalName();
                    else // object is a literal                    
                        strObj = object.toString();

                    ArrayList<Statement> stmtList = new ArrayList();
                    stmtList = rdf.getStatement(strObj);

                   if(predicate.getLocalName().equals("agent") && !stmtList.get(0).getObject().equals(previousObj)){
                        id = "'" + strObj + "'";                                               
                        label  = stmtList.get(0).getObject().asResource().getLocalName();
                        previousObj = stmtList.get(0).getObject();
                        generateFact(output); 
                        break;
                    }                                 
                }                
        } 
        rdf.closeModel();
    }       
                            
                /*label = rs.getString("name");
                type = null;*/
    
       
    public void generateFact(StringBuffer output){ 
            output.append(Prov.AGENT);
            output.append("(");
            output.append(id);
            output.append(",[prop(");
            output.append(Prov.TYPE);
            output.append(",['");
            output.append(ProvOne.USER);
            output.append("'])");  
            output.append(",prop(");
            output.append(Prov.LABEL);
            output.append(",'");
            output.append(label);
            output.append("')");                           
            output.append("]).\n");

            
    /* output =         "member(X,[X|_]).\n" +
                             "member(X,[_|T]) :- member(X|T).\n" +
                             "entityType(ID,NAME,TYPE) :- entity(ID,[_,attribute(prov:type,TYPE),attribute(prov:label,NAME)|_]).";

     FileManager.getBufferedWriter().write(output); */            
        
    }

}
