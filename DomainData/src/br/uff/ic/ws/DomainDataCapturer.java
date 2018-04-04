package br.uff.ic.ws;

import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import javax.swing.JOptionPane;
import br.uff.ic.io.FileManager;
import br.uff.ic.parser.XMLParser;
import java.util.ArrayList;

/**
*
* @author Wellington Moreira de Oliveira
* @since 26/02/2015
*/

public class DomainDataCapturer {
    private XMLParser xmlParser;
    private String factsPath;
    private String wkfEx;
    
    public DomainDataCapturer(){
        xmlParser = new XMLParser();
    }
    
    public File getXML(String url, String obj_id){        
    	File file = new File(System.getProperty("user.dir") + "\\source_" + obj_id + ".xml");
    	
        try {
            URL u = new URL(url);            
            HttpURLConnection uc = (HttpURLConnection) u.openConnection();
            //uc.setInstanceFollowRedirects(false); 
            
            boolean redirect = false;    
            int status = uc.getResponseCode();
            if (status != HttpURLConnection.HTTP_OK) {
                    if (status == HttpURLConnection.HTTP_MOVED_TEMP
                            || status == HttpURLConnection.HTTP_MOVED_PERM
                                    || status == HttpURLConnection.HTTP_SEE_OTHER)
                    redirect = true;
            }

            if (redirect) {

                    // get redirect url from "location" header field
                    String newUrl = uc.getHeaderField("Location");

                    // get the cookie if need, for login
                    String cookies = uc.getHeaderField("Set-Cookie");

                    // open the new connnection again
                    uc = (HttpURLConnection) new URL(newUrl).openConnection();
                    uc.setRequestProperty("Cookie", cookies);
                    uc.addRequestProperty("Accept-Language", "en-US,en;q=0.8");
                    uc.addRequestProperty("User-Agent", "Mozilla");
                    uc.addRequestProperty("Referer", "google.com");

                    System.out.println("Redirect to URL : " + newUrl);

            }                

            FileManager fileManager = new FileManager(factsPath);                        
            fileManager.save(uc.getInputStream(), file);
            
            translateXML(file);

        } catch (IOException e) {
            System.out.println(e);
        }
        
		return file;    	
    }    
	
	private HashMap<String, File> fileList = new HashMap<String, File>();

	public HashMap<String, File> getFileList(){
		return fileList;
	}	
	  
    public void translateXML(File file) {    	
    	String fileName = file.getName();		
    	fileList.put(fileName, file);    			    			
    	fileList = getFileList(); 
        
    	xmlParser.setClearData(false);
    	xmlParser.setResetLastId(false);    	
        xmlParser.executeParseSax(fileList, factsPath, wkfEx);            	
    	fileList.clear();   	    	
    } 
    
    public void executeWSClient(int index, ArrayList<String> objIdList, String factsPath, String wkfEx){
        String url = "";
        setWkfEx(wkfEx);
        setfactsPath(factsPath);

        switch(index){
        /*case 0:					
                JOptionPane.showMessageDialog(getContentPane(), "Choose a web service", "Message", JOptionPane.INFORMATION_MESSAGE);
                break;		*/		
        case 0:
            for(String obj_id:objIdList){
                url = "http://www.ebi.ac.uk/ena/data/view/" + obj_id + "&display=xml";					
                getXML(url, obj_id);
            }    
            break;
        case 1:
                //url = "";
                //getXML(url, obj_id, factsPath);
                break;			
        case 2:
                //url = "";
                //getXML(url, obj_id,factsPath);
                break;
        }
        //JOptionPane.showMessageDialog(null, "Successfully generated facts from external sources!", "Message", 1);
    } 

    public void setfactsPath(String factsPath){
        this.factsPath = factsPath;
    } 
    
    public void setWkfEx(String wkfEx){
        this.wkfEx = wkfEx;
    }     
       
    public String getfactsPath(){
        return factsPath;
    } 
    
    public String getWkfEx(){
        return wkfEx;
    }          

        
}
