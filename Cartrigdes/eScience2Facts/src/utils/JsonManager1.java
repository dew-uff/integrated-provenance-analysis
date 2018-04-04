/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.io.FileReader;
import java.io.IOException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 *
 * @author nwm26
 */
public class JsonManager1 {
    
    
    public JsonManager1(){
   
        JSONParser parser = new JSONParser();

	try {
		Object obj = parser.parse(new FileReader("C:\\Dropbox\\Workspace\\ProvOneFacts-eSC\\inv-7137.json"));

		JSONObject json = (JSONObject) obj;
                JSONObject jsonInvocation = (JSONObject)json.get("invocation");                               
                JSONObject jsonDrawing = (JSONObject)json.get("drawing");
                JSONObject jsonConnections = (JSONObject)jsonDrawing.get("connections");  
                JSONArray jsonConnectionArray = (JSONArray)jsonConnections.get("connectionArray");                  
                JSONObject jsonBlocks = (JSONObject)jsonDrawing.get("blocks"); 
                JSONArray jsonBlockArray = (JSONArray)jsonBlocks.get("blockArray");

                System.out.println("invocationId: " + jsonInvocation.get("invocationId"));
                System.out.println("workflowId: " + jsonInvocation.get("workflowId"));
                System.out.println("workflowName: " + jsonDrawing.get("name"));                
                System.out.println("status: " + json.get("status"));              
                
                for(Object jsonBlockArray1 : jsonBlockArray){
                    
                    JSONObject jsonBlock = (JSONObject)jsonBlockArray1;
                    
                    System.out.println("================================================================================");                                        
                    System.out.println("program id: " + jsonBlock.get("guid"));
                    System.out.println("program label: " + jsonBlock.get("label"));
                    System.out.println("program name: " + jsonBlock.get("name"));
                    System.out.println("program description: " + jsonBlock.get("description"));
                    
                    
                    JSONObject jsonInputs = (JSONObject)jsonBlock.get("inputs");
                    JSONArray jsonInputArray = (JSONArray)jsonInputs.get("inputArray");
                                        
                    for (Object jsonInputArray1 : jsonInputArray) {
                        JSONObject jsonInputObj = (JSONObject) jsonInputArray1;
                        System.out.println("inputs: " + jsonInputObj.get("name"));    
                    }
                    
                    JSONObject jsonOutputs = (JSONObject)jsonBlock.get("outputs");
                    JSONArray jsonOutputArray = (JSONArray)jsonOutputs.get("outputArray");
                                        
                    for (Object jsonOutputArray1 : jsonOutputArray) {
                        JSONObject jsonOutputObj = (JSONObject) jsonOutputArray1;
                        System.out.println("outputs: " + jsonOutputObj.get("name"));
                    }                       
		}                     
                                                                                   
                for(Object jsonConnectionArray1 : jsonConnectionArray){
                    
                    JSONObject jsonPort = (JSONObject) jsonConnectionArray1;
                    
                    System.out.println("================================================================================");                    
                    System.out.println("program in id: " + jsonPort.get("destinationBlockGuid"));
                    System.out.println("inPort: " + jsonPort.get("destinationPortName"));
                    System.out.println("program out id: " + jsonPort.get("sourceBlockGuid"));
                    System.out.println("outPort: " + jsonPort.get("sourcePortName"));
		}

	} catch (IOException|ParseException e) {
		e.printStackTrace();
	}    
    }
    
    public static void main(String [] args){
        new JsonManager1();
    }
}
