/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author nwm26
 */
public class PortConnection {
    private String destinationBlock;
    private String sourceBlock;
    private Execution exPort;

    /**
     * @return the destinationBlock
     */
    public String getDestinationBlock() {
        return destinationBlock;
    }

    /**
     * @param destinationBlock the destinationBlock to set
     */
    public void setDestinationBlock(String destinationBlock) {
        this.destinationBlock = destinationBlock;
    }

    /**
     * @return the sourceBlock
     */
    public String getSourceBlock() {
        return sourceBlock;
    }

    /**
     * @param sourceBlock the sourceBlock to set
     */
    public void setSourceBlock(String sourceBlock) {
        this.sourceBlock = sourceBlock;
    }

    /**
     * @return the exPort
     */
    public Execution getExPort() {
        return exPort;
    }

    /**
     * @param exPort the exPort to set
     */
    public void setExPort(Execution exPort) {
        this.exPort = exPort;
    }
    
    
}
