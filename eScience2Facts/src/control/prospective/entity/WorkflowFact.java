/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.prospective.entity;

import model.Prov;
import model.ProvOne;
import model.Workflow;

/**
 *
 * @author nwm26
 */
public class WorkflowFact {
    
    public void printWorkflowFact(Workflow workflow, StringBuffer output){
        output.append(Prov.ENTITY);
        output.append("("); 
        output.append(workflow.getId());
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
        output.append(workflow.getLabel());
        output.append("')");                         
        output.append("]).\n"); 
        
        output.append("hasDataSet(");
        output.append(workflow.getId());
        output.append(", 1).\n");        
    }     
    
}
