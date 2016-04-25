/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import javax.print.attribute.standard.DateTimeAtCompleted;

/**
 *
 * @author nwm26
 */
public class Execution {
    private String id;
    private String blockId;
    private int invocationId;
    private String lable;
    private String name;
    private String description;
    private String startTime;
    private String endTime;
    private int completed;
    private ArrayList<String> inPort;
    private ArrayList<String> outPort;

    /**
     * @return the lable
     */
    public String getLable() {
        return lable;
    }

    /**
     * @param lable the lable to set
     */
    public void setLable(String lable) {
        this.lable = lable;
    }

    /**
     * @return the startTime
     */
    public String getStartTime() {
        return startTime;
    }

    /**
     * @param startTime the startTime to set
     */
    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    /**
     * @return the endTime
     */
    public String getEndTime() {
        return endTime;
    }

    /**
     * @param endTime the endTime to set
     */
    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    /**
     * @return the completed
     */
    public int getCompleted() {
        return completed;
    }

    /**
     * @param completed the completed to set
     */
    public void setCompleted(int completed) {
        this.completed = completed;
    }

    /**
     * @return the inPort
     */
    public ArrayList<String> getInPort() {
        return inPort;
    }

    /**
     * @param inPort the inPort to set
     */
    public void setInPort(ArrayList<String> inPort) {
        this.inPort = inPort;
    }

    /**
     * @return the outPort
     */
    public ArrayList<String> getOutPort() {
        return outPort;
    }

    /**
     * @param outPort the outPort to set
     */
    public void setOutPort(ArrayList<String> outPort) {
        this.outPort = outPort;
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the nodeId to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the blockId
     */
    public String getBlockId() {
        return blockId;
    }

    /**
     * @param blockId the blockId to set
     */
    public void setBlockId(String blockId) {
        this.blockId = blockId;
    }

    /**
     * @return the invocationId
     */
    public int getInvocationId() {
        return invocationId;
    }

    /**
     * @param invocationId the invocationId to set
     */
    public void setInvocationId(int invocationId) {
        this.invocationId = invocationId;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }
}
