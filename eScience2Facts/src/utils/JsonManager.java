/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.io.FileReader;
import java.io.IOException;
import org.json.simple.parser.*;
import org.json.simple.*;

/**
 *
 * @author nwm26
 */
public class JsonManager {
    
    private JSONParser parser;
    private JSONObject json;
    private JSONObject jsonInvocation;                               
    private JSONObject jsonDrawing;
    private JSONObject jsonConnections;  
    private JSONArray jsonConnectionArray;                  
    private JSONObject jsonBlocks; 
    private JSONArray jsonBlockArray;     
        
    public JsonManager(String path){
   
       parser = new JSONParser();
        try {
		Object obj = parser.parse(new FileReader(path));

		JSONObject json = (JSONObject) obj;

                jsonInvocation = (JSONObject)json.get("invocation");                               
                jsonDrawing = (JSONObject)json.get("drawing");
                jsonConnections = (JSONObject)jsonDrawing.get("connections");  
                jsonConnectionArray = (JSONArray)jsonConnections.get("connectionArray");                  
                jsonBlocks = (JSONObject)jsonDrawing.get("blocks"); 
                jsonBlockArray = (JSONArray)jsonBlocks.get("blockArray");            
                
	} catch (IOException|ParseException e) {
		e.printStackTrace();
	}    
    }  
    
    /*public void setWorkflow(){
        System.out.println("invocationId: " + getJsonInvocation().get("invocationId"));
        System.out.println("workflowId: " + getJsonInvocation().get("workflowId"));
        System.out.println("workflowName: " + getJsonDrawing().get("name"));                
        System.out.println("status: " + getJson().get("status"));           
    }  */     

    /**
     * @return the parser
     */
    public JSONParser getParser() {
        return parser;
    }

    /**
     * @param parser the parser to set
     */
    public void setParser(JSONParser parser) {
        this.parser = parser;
    }

    /**
     * @return the json
     */
    public JSONObject getJson() {
        return json;
    }

    /**
     * @param json the json to set
     */
    public void setJson(JSONObject json) {
        this.json = json;
    }

    /**
     * @return the jsonInvocation
     */
    public JSONObject getJsonInvocation() {
        return jsonInvocation;
    }

    /**
     * @param jsonInvocation the jsonInvocation to set
     */
    public void setJsonInvocation(JSONObject jsonInvocation) {
        this.jsonInvocation = jsonInvocation;
    }

    /**
     * @return the jsonDrawing
     */
    public JSONObject getJsonDrawing() {
        return jsonDrawing;
    }

    /**
     * @param jsonDrawing the jsonDrawing to set
     */
    public void setJsonDrawing(JSONObject jsonDrawing) {
        this.jsonDrawing = jsonDrawing;
    }

    /**
     * @return the jsonConnections
     */
    public JSONObject getJsonConnections() {
        return jsonConnections;
    }

    /**
     * @param jsonConnections the jsonConnections to set
     */
    public void setJsonConnections(JSONObject jsonConnections) {
        this.jsonConnections = jsonConnections;
    }

    /**
     * @return the jsonConnectionArray
     */
    public JSONArray getJsonConnectionArray() {
        return jsonConnectionArray;
    }

    /**
     * @param jsonConnectionArray the jsonConnectionArray to set
     */
    public void setJsonConnectionArray(JSONArray jsonConnectionArray) {
        this.jsonConnectionArray = jsonConnectionArray;
    }

    /**
     * @return the jsonBlocks
     */
    public JSONObject getJsonBlocks() {
        return jsonBlocks;
    }

    /**
     * @param jsonBlocks the jsonBlocks to set
     */
    public void setJsonBlocks(JSONObject jsonBlocks) {
        this.jsonBlocks = jsonBlocks;
    }

    /**
     * @return the jsonBlockArray
     */
    public JSONArray getJsonBlockArray() {
        return jsonBlockArray;
    }

    /**
     * @param jsonBlockArray the jsonBlockArray to set
     */
    public void setJsonBlockArray(JSONArray jsonBlockArray) {
        this.jsonBlockArray = jsonBlockArray;
    }
    
}
