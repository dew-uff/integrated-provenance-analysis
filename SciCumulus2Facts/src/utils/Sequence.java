/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

/**
 *
 * @author nwm26
 */
public class Sequence {
    static int sequence = 1;  
    
    public static void setSequence(int value){
        sequence = value;
    }
    
    public static int getSequence(){
        return sequence++;
    }
    
}
