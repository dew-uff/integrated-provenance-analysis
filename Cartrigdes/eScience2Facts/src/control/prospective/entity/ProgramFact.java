/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.prospective.entity;

import model.Prov;
import model.ProvOne;
import model.Program;

/**
 *
 * @author nwm26
 */
public class ProgramFact {
    
    public void printProgramFact(Program program, StringBuffer output){
        output.append(Prov.ENTITY);
        output.append("("); 
        output.append(program.getId());
        output.append(",[prop(");        
        output.append(Prov.TYPE);
        output.append(",['");
        output.append(Prov.PLAN); 
        output.append("','");
        output.append(ProvOne.PROGRAM);
        output.append("'])");                    
        output.append(",prop(");
        output.append(Prov.LABEL);
        output.append(",'");
        output.append(program.getLabel());
        output.append("')"); 
        //output.append(",prop(");
        //output.append(Prov.TYPE);
        //output.append(",'");
        //output.append(program.getType());
        //output.append("')");                       
        output.append("]).\n");         
    }     
}
