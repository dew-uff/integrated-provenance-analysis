/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.entity;

import model.Prov;
import model.ProvOne;
import model.WfMS;
import model.Workflow;

/**
 *
 * @author nwm26
 */
public class WExecutionFact {

    public void printWExecution(String eWid, String name, String startTime, String endTime, StringBuffer output){
        
        Workflow workflow = new Workflow();
        //json.setWorkflow(workflow);
        
        /*execution.setNodeId(node.getId());
        execution.setLable(node.getProperty("name", null).toString());
        execution.setStartTime(node.getProperty("startTime", null).toString());
        execution.setEndTime(node.getProperty("endTime", null).toString());
        //execution.setCompleted( (int) node.getProperty("completed", null));  */       
                
        
        output.append(Prov.ACTIVITY);
        output.append("(ew"); 
        output.append(eWid); //invocationId
        output.append(",[prop(");
        output.append(Prov.TYPE);
        output.append(",['");
        output.append(ProvOne.EXECUTION);
        output.append("'])");  
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",'"); 
        output.append(name);
        output.append("')");
        output.append(",prop(");
        output.append(Prov.STARTTIME);
        output.append( ",'");  
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
        //output.append(node.getProperty("completed", null));
        output.append("')");                        
        output.append("]).\n");
        
        output.append("hadSystem");
        output.append("(ew");
        output.append(eWid);
        output.append(", 1).\n");
        
    }         
    
}
