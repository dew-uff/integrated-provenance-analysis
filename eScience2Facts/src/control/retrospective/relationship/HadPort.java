/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.relationship;

/**
 *
 * @author nwm26
 */
public class HadPort {
    
    public void print(String rel, String exId, String portId, StringBuffer output){
            output.append(rel);
            output.append("(");
            output.append(exId);
            output.append(",");
            output.append(portId);
            output.append(").\n");         
    }        
}
