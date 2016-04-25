/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.prospective.entity;

import model.Port;
import model.Prov;
import model.ProvOne;

/**
 *
 * @author nwm26
 */
public class PortFact {         
    
    public void printPort(Port port,StringBuffer output){        
        
            output.append(Prov.ENTITY);
            output.append("("); 
            output.append(port.getId());
            output.append(",[prop(");
            output.append(Prov.TYPE);
            output.append(",['");
            output.append(ProvOne.PORT);
            output.append("'])");  
            output.append(",prop(");
            output.append(Prov.LABEL);
            output.append(",'"); 
            output.append(port.getLabel());
            output.append("')");   
            //output.append(",prop(");
            //output.append(WfMS.SIGNATURE);
            //output.append(",['");                          
            //output.append(port.getSignature());
            output.append("]).\n");
        }        
       //output.replace(0, output.length(), output.substring(0, (output.length()-1)));                     
        //output.append("])]).\n");  
}
