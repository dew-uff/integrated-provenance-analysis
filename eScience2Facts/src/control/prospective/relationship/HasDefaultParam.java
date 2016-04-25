/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.prospective.relationship;

import model.ProvOne;


/**
 *
 * @author nwm26
 */
public class HasDefaultParam {
    int cont;
       

    public void printHasDefaultParam(String inPortId, String dataId, StringBuffer output){
        output.append(ProvOne.HASDEFAULTPARAM);
        output.append("(");
        output.append(inPortId);
        output.append(",");
        output.append(dataId);
        output.append(").\n");         
    }      
    
}
