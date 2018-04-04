package br.uff.ic.io;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;  
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.HashMap;

import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;

import java.util.ArrayList;

/**
*
* Modified by: Wellington Moreira de Oliveira
* @since 02/26/2015
*/

public class FileManager {
	private String factsPath;
	private static final String RULES_FILE_NAME = "BaseRegras.pl";
	private static final String PERMISSION = "rw";
	private static final String PATH = System.getProperty("user.dir");
        
        public FileManager(String factsPath){
            this.factsPath = factsPath;
        }
	
	private HashMap<String, File> fileList = new HashMap<String, File>();

	public HashMap<String, File> getFileList(){
		return fileList;
	}
	
	public String loadFile(String fileType) {
		String fileName = null;
				
		try{
			final JFileChooser fc = new JFileChooser();
			String titulo = "Escolha um arquivo " + fileType;
			fc.setDialogTitle(titulo);
			FileNameExtensionFilter filter = new FileNameExtensionFilter("Arquivos XML", fileType);
		    fc.setFileFilter(filter);
		    fc.setCurrentDirectory(new File(PATH));
		    fc.setMultiSelectionEnabled(false);
		    int returnVal = fc.showOpenDialog(fc);
		    if (returnVal == JFileChooser.APPROVE_OPTION){
		    	File fileChosen = fc.getSelectedFile();
		    	fileName = fileChosen.getName();
		    	fileList.put(fileName, fileChosen);
		    }
		} catch (Exception e){
			 System.out.println(e.toString());
		}
		
		return (fileName);
	}
	
	public void writeRules(String text){	
		File file = new File(RULES_FILE_NAME);		
		FileWriter fw;
		try {
			fw = new FileWriter(file, true);
			fw.append(text);
			fw.close();
		} catch (IOException erro) {  
			System.out.print("Erro :" + erro.toString());  
		} catch (SecurityException erro2) {  
			System.out.print("Erro :" + erro2.toString());  
		}
	}
	
	public void writeFacts(String text){	
		File file = new File(factsPath);
		FileWriter fw;
		try {
			fw = new FileWriter(file, true);
			fw.append(text);
			fw.close();
		} catch (IOException erro) {  
			System.out.print("Erro :" + erro.toString());  
		} catch (SecurityException erro2) {  
			System.out.print("Erro :" + erro2.toString());  
		}
	}
        
        
	
	public String readRules(){
		File file = new File(RULES_FILE_NAME);
		String texto = "";  
		StringBuffer temp = new StringBuffer();    
		
		try {    
			FileReader arquivo = new FileReader(file);  
			BufferedReader ler = new BufferedReader(arquivo);  
			 
			boolean fim = false;  
			  
			while (!fim) {  
				String linha = ler.readLine();  
				if (linha == null)  
					fim = true;  
				else  
					temp.append(linha + "\n");  
			}  
			
			texto = temp.toString(); 
			ler.close();  
			arquivo.close();  
		} catch (IOException erro) {  
			System.out.print("Erro :" + erro.toString());  
		} catch (SecurityException erro2) {  
			System.out.print("Erro :" + erro2.toString());  
		}
		
		return texto;
	}
	
	public ArrayList<String> readRulesList(){
		File file = new File(RULES_FILE_NAME);
		ArrayList<String> rulesArray = new ArrayList<String>();		
		
		try {    
			FileReader arquivo = new FileReader(file);  
			BufferedReader ler = new BufferedReader(arquivo);  
			 
			boolean fim = false;  
			  
			while (!fim) {  
				String linha = ler.readLine();  
				if (linha == null)  
					fim = true;
				else
					rulesArray.add(linha);
					
			}  
			 
			ler.close();  
			arquivo.close();  
		} catch (IOException erro) {  
			System.out.print("Erro :" + erro.toString());  
		} catch (SecurityException erro2) {  
			System.out.print("Erro :" + erro2.toString());  
		}
		
		return rulesArray;
	}
	
	public String readFacts(){
		File file = new File(factsPath);
		String texto = "";  
		StringBuffer temp = new StringBuffer();    
		
		try {    
			FileReader arquivo = new FileReader(file);  
			BufferedReader ler = new BufferedReader(arquivo);  
			 
			boolean fim = false;  
			  
			while (!fim) {  
				String linha = ler.readLine();  
				if (linha == null)  
					fim = true;  
				else  
					temp.append(linha + "\n");  
			}  
			
			texto = temp.toString(); 
			ler.close();  
			arquivo.close();  
		} catch (IOException erro) {  
			System.out.print("Erro :" + erro.toString());  
		} catch (SecurityException erro2) {  
			System.out.print("Erro :" + erro2.toString());  
		}
		return texto;
	}
	
	public void clearFiles(){
		try{
			RandomAccessFile file = new RandomAccessFile(RULES_FILE_NAME, PERMISSION);
			file.setLength(0);
			file.close();
			
			file = new RandomAccessFile(factsPath, PERMISSION);
			file.setLength(0);
			file.close();
		}
		catch(FileNotFoundException fnfe){
			System.out.println(fnfe.getMessage());
		}
		catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}
	}

	public void clearDataFacts() {
		// TODO Auto-generated method stub
		try{
			RandomAccessFile file = new RandomAccessFile(factsPath, PERMISSION);
			file.setLength(0);
			file.close();
		}
		catch(FileNotFoundException fnfe){
			System.out.println(fnfe.getMessage());
		}
		catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}
	}	
	
    public boolean save(InputStream stream, File file) {
        BufferedInputStream in = null;
        BufferedOutputStream out = null;
        int bufSize = 8 * 1024;
        int read;
        try {            
            in = new BufferedInputStream(stream, bufSize);
            out = new BufferedOutputStream(new FileOutputStream(file), bufSize);            
            byte[] buf = new byte[bufSize];
            while ((read = in.read(buf, 0, bufSize)) >= 0) {
                out.write(buf, 0, read);
            }
            out.flush();
        } catch (IOException | SecurityException e) {
            System.out.println(e);
            return false;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (IOException ex) {
                    System.out.println(ex);
                }
            }
            if (out != null) {
                try {
                    out.close();
                } catch (IOException iex) {
                    System.out.println(iex);
                }
            }
        }
        return true;
    }	
	
}
