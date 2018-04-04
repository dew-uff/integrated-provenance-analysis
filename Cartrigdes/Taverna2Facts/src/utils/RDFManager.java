package utils;

import java.io.InputStream;
import java.util.ArrayList;
import org.apache.jena.rdf.model.*;
import org.apache.jena.vocabulary.*;
import org.apache.log4j.varia.NullAppender;
import org.apache.jena.util.FileManager;
import org.apache.jena.rdf.model.StmtIterator;
/**
 *
 * @author Well
 */
public class RDFManager extends Object {
       
    private String inputFileName;   
    private Model model;
    
    public RDFManager(String inputFileName){
        this.inputFileName = inputFileName;
        org.apache.log4j.BasicConfigurator.configure(new NullAppender()); 
        model = ModelFactory.createDefaultModel();         
        InputStream in = FileManager.get().open( inputFileName );
        if (in == null) {
           throw new IllegalArgumentException(
                                        "File: " + inputFileName + " not found");
        }           
        model.read(in,null,"TTL");          
    }
                
    public ArrayList<Resource> getResource(String pred, String obj){

        ArrayList<Resource> resourceList = new ArrayList();
                                        
        StmtIterator iter = model.listStatements();                 
        
        while (iter.hasNext()) {
            Statement stmt      = iter.nextStatement();
            Resource  subject   = stmt.getSubject();
            Property  predicate = stmt.getPredicate(); 
            RDFNode   object    = stmt.getObject();    
                                                         
            if(predicate.getLocalName().equals(pred) && object.asResource().getLocalName().equals(obj)){ 
                                        
              resourceList.add(subject);
              
            }
        }
        return resourceList;        
    }  
    
    public ArrayList<Resource> getResource(String pred, RDFNode obj){

        ArrayList<Resource> resourceList = new ArrayList();
                                        
        StmtIterator iter = model.listStatements();                 
        
        while (iter.hasNext()) {
            Statement stmt      = iter.nextStatement();
            Resource  subject   = stmt.getSubject();
            Property  predicate = stmt.getPredicate(); 
            RDFNode   object    = stmt.getObject();    

            if(predicate.getLocalName().equals(pred) && object.asResource().equals(obj)){ 
                                        
              resourceList.add(subject);
              
            }
        }
        return resourceList;        
    }      
    
    public  ArrayList<Statement>  getStatement(String subj){

        ArrayList<Statement> stmtList = new ArrayList();
                                        
        StmtIterator iter = model.listStatements();                 
        
        while (iter.hasNext()) {
            Statement stmt      = iter.nextStatement();
            Resource  subject   = stmt.getSubject();
            Property  predicate = stmt.getPredicate(); 
            RDFNode   object    = stmt.getObject();    

            if(subject.getLocalName() != null && subject.getLocalName().equals(subj))                                        
              stmtList.add(stmt);        
        }  
        return stmtList;
    }    
    
    public void closeModel(){
        model.close();        
    }    
            
    public void createRDF(){
        
        org.apache.log4j.BasicConfigurator.configure(new NullAppender());        
        // some definitions
        String personURI    = "http://somewhere/JohnSmith";
        String givenName    = "John";
        String familyName   = "Smith";
        String fullName     = givenName + " " + familyName;
        // create an empty model
        model = ModelFactory.createDefaultModel();

        // create the resource
        //   and add the properties cascading style
        Resource johnSmith 
          = model.createResource(personURI)
                 .addProperty(VCARD.FN, fullName)
                 .addProperty(VCARD.N, 
                              model.createResource()
                                   .addProperty(VCARD.Given, givenName)
                                   .addProperty(VCARD.Family, familyName));
        
        // now write the model in XML form to a file
        model.write(System.out, "Turtle");   
                
    }  
}