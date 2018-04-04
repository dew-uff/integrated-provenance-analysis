/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.prospective.relationship;

import model.ProvOne;

/**
 *
 * @author Wellington
 */
public class HasDefaultParam {
    
    public HasDefaultParam(String port, String data, StringBuffer output){        
        output.append(ProvOne.HASDEFAULTPARAM);
        output.append("(pin");        
        output.append(port);
        output.append("s");
        output.append(",");
        output.append(data);
        output.append("s");
        output.append(").\n");                           
    }    
}
