/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.entity;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import model.Execution;
import model.Prov;
import model.ProvOne;
import model.WfMS;

/**
 *
 * @author nwm26
 */
public class ExecutionFact {
    
    public void printExecution(Execution ex, StringBuffer output){
        
        try {
            //Wed Jul 22 21:29:28 CEST 2015        
            Date start = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy").parse(ex.getStartTime());
            Date end = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy").parse(ex.getEndTime());
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
            String startTime = formatter.format(start);            
            String endTime = formatter.format(end);

            output.append(Prov.ACTIVITY);
            output.append("(ex"); 
            output.append(ex.getId());
            output.append(",[prop(");
            output.append(Prov.TYPE);
            output.append(",['");
            output.append(ProvOne.EXECUTION);
            output.append("'])");  
            output.append(",prop(");
            output.append(Prov.LABEL);
            output.append(",'"); 
            output.append(ex.getLable());
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
            output.append(ex.getCompleted());
            output.append("')");                        
            output.append("]).\n");   
        
        } catch (ParseException e){
            e.printStackTrace();
        }       
    }    
    
}
