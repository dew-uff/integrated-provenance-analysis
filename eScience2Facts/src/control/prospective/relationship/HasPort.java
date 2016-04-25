/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.prospective.relationship;

/**
 *
 * @author nwm26
 */
public class HasPort {

    public void print(String type, String programId, String portId,  StringBuffer output){
            output.append(type);
            output.append("(");
            output.append(programId);
            output.append(",");
            output.append(portId);
            output.append(").\n");         
    }    
}
