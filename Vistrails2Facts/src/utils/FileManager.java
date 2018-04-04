/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nwm26
 */
public class FileManager {
    Charset charset = Charset.forName("UNICODE");//("US-ASCII");
    private static FileWriter writer;
    private static File file;
    private static String path;
    
    private static FileWriter createFile(String path, Boolean append){
        try {
            file = new File(path);
            
            if(file.isFile() && append)
                writer = new FileWriter(file, append);
            else
                writer = new FileWriter(file);
             
        } catch ( IOException e ) {
            System.out.println(e);
        } 
        return writer;
    }
    
    public FileWriter getWriter(String path, Boolean append){        
        return createFile(path, append);
    }
    
    public static void closeFile(){
       try {                
           writer.flush(); 
           writer.close();
        } catch (IOException ex) {
            Logger.getLogger(FileManager.class.getName()).log(Level.SEVERE, null, ex);
        }         
    }
    
}
