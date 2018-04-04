/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.main;

import control.prospective.Port;
import control.retrospective.Data;
import control.retrospective.Execution;
import control.prospective.Program;
import control.retrospective.User;
import control.retrospective.WExecution;
import control.prospective.Workflow;
import control.prospective.relationship.HasInPort;
import control.prospective.relationship.HasOutPort;
import control.prospective.relationship.HasSubProgram;
import control.retrospective.relationship.HadInPort;
import control.retrospective.relationship.HadOutPort;
import control.retrospective.relationship.Used;
import control.retrospective.relationship.WasAssociatedWith;
import control.retrospective.relationship.WasGeneratedBy;
import control.retrospective.relationship.WasInformedBy;
import control.retrospective.relationship.WasPartOf;
import control.retrospective.relationship.HadPlan;
import control.retrospective.relationship.WasDerivedFrom;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.SQLException;
import utils.FileManager;
/**
 *
 * @author nwm26
 */
public class FactGeneration {
    

    /**
     * @param args the command line arguments
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     */
    
    /*public static void main(String[] args) throws ClassNotFoundException, SQLException {
        StringBuffer output;
        FileWriter writer;        
        String database2 = "skills";
  
        output = new StringBuffer();
        //Código do dataset/grafo diferente para cada SGWf
        output.append("\ndataSet(1,'SciCumulus').\n");
        
        //Prospective entities
        new Workflow(output);       
        new Program(output); 
        new Port(output);          
              
        //Prospective relationships
        new HasSubProgram(output);
        new HasOutPort(output);
        new HasInPort(output);

        //Prospective and Retrospective entities
        new Data(output, database2);
        //new Document(output);

        //Retrospective Entities
        new WExecution(output);          
        new Execution(output);
        
        //Retrospective relationships
        new WasGeneratedBy(output, database2);
        new Used(output, database2);                 
        new WasPartOf(output); 
        new WasAssociatedWith(output);
        new WasInformedBy(output);
        new WasDerivedFrom(output);
        new HadPlan(output);
        new HadInPort(output);
        new HadOutPort(output);                        
        new User(output);
        
        try {
            FileManager fileManager = new FileManager();
            writer = fileManager.getWriter("C:\\Users\\Wellington\\Drive\\PhD\\Thesis\\ExperimentalEvaluation\\Facts.pl", false); //path, append (true) or new file (false)              
            writer.write(output.substring(0, output.length()-1));
            writer.close();  
        } catch(IOException e) {
            e.printStackTrace();
        }
    }*/
    

}
    
