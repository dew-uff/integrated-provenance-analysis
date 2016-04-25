/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.prospective.relationship;

import model.Program;
import model.Prov;
import model.Workflow;

/**
 *
 * @author nwm26
 */
public class HasSubProgram {
    
    public void printHasSubProgram(Workflow workflow, Program program, StringBuffer output){
            output.append(Prov.HASSUBPROGRAM);
            output.append("(");
            output.append(workflow.getId());
            output.append(",");
            output.append(program.getId());
            output.append(").\n");            
    }      
}
