/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.uff.ic.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.regex.Pattern;

/**
 *
 * @author Wellington
 */
public class Extractor {
    
    public ArrayList<String> extractObjId(String fileIn, int position){
        ArrayList<String> objIdList = new ArrayList<String>();
        try {
            Scanner sc = new Scanner(new File(fileIn));
            sc.useDelimiter("\n");
            String obj_id = null;
            String [] list = null;
            while (sc.hasNext()) {
                obj_id = sc.nextLine();
                //if(obj_id.contains(">")){
                    list = obj_id.split(Pattern.quote("|"));                                                                            
                    for(int i = 0; i < list.length; i++){                        
                        if(!objIdList.contains(list[i])){
                            if(i==position){                 
                                if(position==1){
                                    if(!objIdList.contains(list[i].substring(0,list[i].indexOf(" ")))){
                                        objIdList.add(list[i].substring(0,list[i].indexOf(" "))); 
                                        System.out.println(list[i].substring(0,list[i].indexOf(" "))); 
                                        break;
                                    }    
                                } else
                                    if(!objIdList.contains(list[i])){
                                        objIdList.add(list[i]); 
                                        System.out.println(list[i]); 
                                        break;                                
                                    }
                            }   
                        }
                    }  
                //}
            }
            sc.close();            
        } catch (FileNotFoundException e) {
            System.out.println("Erro na leitura");
            e.printStackTrace();
        }   
        return objIdList;
    }    
    
}
