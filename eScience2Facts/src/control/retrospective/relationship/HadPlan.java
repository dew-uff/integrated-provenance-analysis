/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.retrospective.relationship;

import model.Execution;
import model.Program;
import model.ProvOne;

/**
 *
 * @author nwm26
 */
public class HadPlan {
    
    public void printHadPlan(String idExec, String idProg, StringBuffer output){
        output.append(ProvOne.HADPLAN);
        output.append("(");
        output.append(idExec);
        output.append(",");
        output.append(idProg);
        output.append(").\n");         
    }  
    
}
