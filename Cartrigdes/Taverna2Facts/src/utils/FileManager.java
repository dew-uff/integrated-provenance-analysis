/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
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
    private FileWriter writer;
    
    private String path;
    
    private FileWriter createFile(String path, Boolean append){
        File file = new File(path);
        
        try {
            
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
    
    public void closeFile(){
       try {                
           writer.flush(); 
           writer.close();
        } catch (IOException ex) {
            Logger.getLogger(FileManager.class.getName()).log(Level.SEVERE, null, ex);
        }         
    }
    
    public void openFile(String path){
        
        File file = new File(path);
        
        try {
            
            FileReader fileReader = new FileReader(file);
            BufferedReader buffReader = new BufferedReader(fileReader);
            
            String linha = buffReader.readLine();
            
            while(linha != null){
                System.out.println(linha);
                linha = buffReader.readLine();    
            }
            
            buffReader.close();
            fileReader.close();
            
        } catch (IOException e){
            
            System.out.println("Erro ao ler o arquivo: " + e);
            
        }
        
        
    }
    
    
    
}
