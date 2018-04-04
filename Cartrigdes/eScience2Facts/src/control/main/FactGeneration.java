package control.main;

import utils.ProvenanceUtil;
import model.graph.nodes.ServiceVersion;
import model.graph.nodes.DataVersion;
import model.graph.nodes.ServiceRun;
import model.graph.nodes.User;
import model.graph.nodes.WorkflowRun;
import model.graph.nodes.WorkflowVersion;
import utils.FileManager;
import utils.ProvenanceException;
import model.graph.relationships.ProvenanceRelationshipTypes;
import model.graph.nodes.opm.OpmRelationshipTypes;
import control.prospective.entity.PortFact;
import control.prospective.entity.ProgramFact;
import control.prospective.entity.WorkflowFact;
import control.prospective.relationship.HasDefaultParam;
import control.prospective.relationship.HasPort;
import control.prospective.relationship.HasSubProgram;
import control.retrospective.entity.DataFact;
import control.retrospective.entity.DocumentFact;
import control.retrospective.entity.ExecutionFact;
import control.retrospective.entity.UserFact;
import control.retrospective.entity.WExecutionFact;
import control.retrospective.relationship.HadPort;
import control.retrospective.relationship.HadPlan;
import java.nio.charset.Charset;
import org.neo4j.graphdb.index.Index;
import java.util.Collection;
import java.util.LinkedList;
import model.Execution;
import model.Workflow;
import org.neo4j.graphdb.*;
import utils.JsonManager;
import control.retrospective.relationship.Relationships;
import java.io.FileWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import model.Data;
import model.Port;
import model.Program;
import model.Prov;
import model.ProvOne;
import model.WExecution;
import org.json.simple.JSONObject;
import org.json.simple.JSONArray;

public class FactGeneration {

    GraphDatabaseService graphDb = null;
    Charset charset = Charset.forName("US-ASCII");
    FileWriter writer;
    JsonManager json;
    StringBuffer output;
    WExecution wExecution = new WExecution();    
    Date startTime, endTime, previousStartTime, previousEndTime;
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    private Index<Node> escIdIndex;

    public static void main(String[] args) {
        
        FactGeneration pdfReport;
        pdfReport = new FactGeneration();            
        pdfReport.exportProv("25557","OUTGOING");//17511 "7140" "OUTGOING"  -     "INCOMING" "522" 8877
        /*result+= pdfReport.getProvenanceAsDot( "7144", "OUTGOING");
        result+= pdfReport.getProvenanceAsDot( "7148", "OUTGOING");
        result+= pdfReport.getProvenanceAsDot( "7150", "OUTGOING");*/
        FileManager.closeFile();
    }   
    
    public FactGeneration() {
        try {
            graphDb = ProvenanceUtil.getConnection("C:/data");//("C:/CSPA/neo4j-community-1.7.2/data/data-20151127/");
            String ESC_ID_INDEX_NAME = "esc-index";
            escIdIndex = graphDb.index().forNodes(ESC_ID_INDEX_NAME);
            json = new JsonManager("C:\\Dropbox\\Workspace\\eScience2Facts\\Top-Level-(Yaobo).json");//("C:/Dropbox/Workspace/eScienceFacts/inv-7137.json");                                                              
            FileManager fileManager = new FileManager();
            writer = fileManager.getWriter("C:\\Dropbox\\facts2.pl", false); //path (String), append (true) or new file (false)                   
        } catch (ProvenanceException e) {
            e.printStackTrace();
       }
    }      
    
    public void exportProv(String versionId, String direction){
                
        Transaction tx = graphDb.beginTx();   

        try {                           
            DataVersion dataVersion = getDataVersion(versionId);
            if (dataVersion == null)
                System.out.println("Can't find node with esc Id: " + versionId);
            try {
                Node dataNode = dataVersion.getUnderlyingNode();
                if (dataNode != null) {
                    Traverser traverser = dataNode.traverse(
                            Traverser.Order.DEPTH_FIRST,
                            StopEvaluator.END_OF_GRAPH,
                            ReturnableEvaluator.ALL,
                            OpmRelationshipTypes.USED, Direction.valueOf(direction),
                            OpmRelationshipTypes.WAS_GENERATED_BY, Direction.valueOf(direction),
                            ProvenanceRelationshipTypes.CONTAINED, Direction.BOTH,
                            ProvenanceRelationshipTypes.WAS_CONTROLLED_BY, Direction.OUTGOING,
                            ProvenanceRelationshipTypes.INVOKED_BY, Direction.OUTGOING,
                            ProvenanceRelationshipTypes.RUN_OF, Direction.OUTGOING,
                            ProvenanceRelationshipTypes.INSTANCE_OF, Direction.OUTGOING);
                                    
                    // For each node in the paths, get the node 'fact' representation.
                    Collection<Node> allNodes = traverser.getAllNodes();
                    Collection<Node> unprocessedNodes = new LinkedList<>(allNodes);
                    output = new StringBuffer();
                    output.append("dataSet(1,'e-Science Central').\n");
                    Relationships relationships = new Relationships();

                    for (Node node : allNodes) {
                        if (!isTransientDataNode(node)) {
                            generateNode(node, output);
                            generateEdges(node, unprocessedNodes, relationships);
                        }                        
                        unprocessedNodes.remove(node);                         
                    } 
                    
                    new WExecutionFact().printWExecution(Long.toString(wExecution.getId()), wExecution.getName(), formatter.format(wExecution.getStartTime()), formatter.format(wExecution.getEndTime()), output);              
                    new HadPlan().printHadPlan("ew" + wExecution.getId(), "w" + json.getJsonInvocation().get("workflowId"),  output);                    
                    
                    setProgramFromJson();
                    writer.write(output.substring(0, output.length()-1));                                                   
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            tx.success();
            } finally {
            tx.finish();
            }                   
    }
        
    private void generateNode(Node node, StringBuffer output) { 
                
        if (node.getProperty("TYPE").equals("DataVersion") || node.getProperty("TYPE").equals("TransientData") ){  
                        
            new DocumentFact().printDocumentFact(node, output);
            
        }else if (node.getProperty("TYPE").equals("Service Run") || 
            (node.getProperty("TYPE").equals("Read"))){ 
                        
            Execution execution = new Execution();
            execution.setId(node.getId()+"");
            execution.setLable(node.getProperty("name", "???").toString());
            execution.setStartTime(node.getProperty("startTime", "???").toString());
            execution.setEndTime(node.getProperty("endTime", "???").toString());                        
            execution.setBlockId(node.getProperty("blockUUID", "???").toString());
            //execution.setCompleted( (int) node.getProperty("completed", null));                                                    
            new ExecutionFact().printExecution(execution, output);
            setHadPlan(execution);  
            
            try {                

                startTime = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy").parse(execution.getStartTime());            
                if(previousStartTime == null)
                    previousStartTime = startTime;                                                 
                if(previousStartTime.before(startTime))
                    startTime = previousStartTime; 
                else
                    previousStartTime = startTime;
                wExecution.setStartTime(startTime);


                endTime = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy").parse(execution.getEndTime());            
                if(previousEndTime == null)
                    previousEndTime = endTime;                                                 
                if(previousEndTime.after(endTime))
                    endTime = previousEndTime; 
                else
                    previousEndTime = endTime;
                wExecution.setEndTime(endTime); 
            
            } catch (ParseException e){
                e.printStackTrace();
            }                        
                
        }else if (node.getProperty("TYPE").equals("Workflow Run")){             
            
            wExecution.setId(node.getId()); 
            wExecution.setName(node.getProperty("name", null).toString());
            
        /*}else if (node.getProperty("TYPE").equals("Workflow Version")){                        
        }else if (node.getProperty("TYPE").equals("Service Version")){ */ 
            
        }else if (node.getProperty("TYPE").equals("User")){   
            
            new UserFact().printUserFact(node, output);   
            
        }         
    }      

    private void generateEdges(Node node, Collection<Node> allNodes, Relationships relationships) {
        String relType;
        
        for (Relationship relationship : node.getRelationships(Direction.OUTGOING)) {
            Node toNode = relationship.getEndNode();
            toNode = traversTranientNode(toNode, Direction.OUTGOING);
            Node fromNode = relationship.getStartNode();

            if (allNodes.contains(toNode)) {                    
                relType = relationship.getType().name();                    
                relationships.setRelationship(fromNode, toNode, relType, output);                       
            }
        }

        for (Relationship relationship : node.getRelationships(Direction.INCOMING)) {
            Node fromNode = relationship.getStartNode();
            fromNode = traversTranientNode(fromNode, Direction.INCOMING);
            Node toNode = relationship.getEndNode();

            if (allNodes.contains(fromNode)) {
                relType = relationship.getType().name();                    
                relationships.setRelationship(fromNode, toNode, relType, output);                                             
            }
        }
    }  
    
    public void setHadPlan(Execution execution){
        Program program = new Program();
        for(Object jsonBlockArray1 : json.getJsonBlockArray()){ 
            JSONObject jsonBlock = (JSONObject)jsonBlockArray1; 
            if(jsonBlock.get("guid").equals(execution.getBlockId())){                
                program.setId(jsonBlock.get("name").toString().replace("block_", "pg"));  
                program.setBlockId(jsonBlock.get("guid").toString());
                new HadPlan().printHadPlan("ex" + execution.getId(), program.getId(), output);
                setHadPortFromJson(execution, program, jsonBlockArray1);
            }
        } 
    }
    
    public void setHadPortFromJson(Execution execution, Program program, Object jsonBlockArray1){
        int contIn = 1;
        int contOut = 1;
        
        JSONObject jsonBlock = (JSONObject)jsonBlockArray1;
        Port port = new Port();
        HadPort hadPort = new HadPort();
        HasPort hasPort = new HasPort();                
        
        for(Object getJsonConnectionArray1 : json.getJsonConnectionArray()){
            JSONObject jsonPort = (JSONObject)getJsonConnectionArray1;
            if(jsonBlock.get("guid").equals(jsonPort.get("destinationBlockGuid"))){                
                port.setId(program.getId().replace("pg", "pin") + contIn++);
                port.setLabel(jsonPort.get("destinationPortName").toString());
                port.setType("inputPort");
                port.setSignature(null); 
                hadPort.print(ProvOne.HADINPORT, "ex" + execution.getId(), port.getId(), output);
                hasPort.print(Prov.HASINPORT, program.getId(), port.getId(), output);
            } else if(jsonBlock.get("guid").equals(jsonPort.get("sourceBlockGuid"))) {
                port.setId(program.getId().replace("pg", "pout") + contOut++);
                port.setLabel(jsonPort.get("sourcePortName").toString());
                port.setType("outputPort");
                port.setSignature(null);                           
                hadPort.print(ProvOne.HADOUTPORT, "ex" + execution.getId(), port.getId(), output);
                hasPort.print(Prov.HASOUTPORT, program.getId(), port.getId(), output);
            }
        }                                                      
    }
    
    public void setProgramFromJson(){         
        String wkfId = json.getJsonInvocation().get("workflowId").toString();
        String wkfName = json.getJsonDrawing().get("name").toString();
        
        Workflow workflow = new Workflow();
        workflow.setId("w" + wkfId);
        workflow.setLabel(wkfName);        
        
        WorkflowFact workflowFact = new WorkflowFact();
        workflowFact.printWorkflowFact(workflow, output);       
        Program program = new Program();   
        
        for(Object jsonBlockArray1 : json.getJsonBlockArray()){        
            JSONObject jsonBlock = (JSONObject)jsonBlockArray1; 
            program.setId(jsonBlock.get("name").toString().replace("block_", "pg"));
            program.setBlockId(jsonBlock.get("guid").toString());
            program.setLabel(jsonBlock.get("label").toString());
            program.setDescription(jsonBlock.get("description").toString()); 
            new ProgramFact().printProgramFact(program, output);            
            new HasSubProgram().printHasSubProgram(workflow, program, output);            
            setPortFromJson(program.getId(), jsonBlock.get("guid").toString());            
            setDataFromJson(program, jsonBlockArray1, output); 
        } 
    } 
    
    public void setPortFromJson(String programId, String blockId){
        int contIn = 1;
        int contOut = 1;
        
        Port port = new Port();
        PortFact portFact = new PortFact();
        
        for(Object getJsonConnectionArray1 : json.getJsonConnectionArray()){
            JSONObject jsonPort = (JSONObject)getJsonConnectionArray1;
            if(blockId.equals(jsonPort.get("destinationBlockGuid"))){                
                port.setId(programId.replace("pg", "pin") + contIn++);
                port.setLabel(jsonPort.get("destinationPortName").toString());
                port.setType("inputPort");
                port.setSignature(null);
                portFact.printPort(port, output);                                 
            } else if(blockId.equals(jsonPort.get("sourceBlockGuid"))) {
                port.setId(programId.replace("pg", "pout") + contOut++);
                port.setLabel(jsonPort.get("sourcePortName").toString());
                port.setType("outputPort");
                port.setSignature(null);                
                portFact.printPort(port, output);   
            }
        }        
    }    
    
    public void setDataFromJson (Program program, Object block, StringBuffer output){        
        int cont = 1;
        JSONObject jsonBlock = (JSONObject)block;    
                       
        Data data = new Data();                                
        data.setBlockId(jsonBlock.get("guid").toString());
        
        JSONObject jsonProps = (JSONObject)jsonBlock.get("properties");
        JSONArray jsonPropsArray = (JSONArray)jsonProps.get("propertyArray");

        for (Object jsonPropsArray1 : jsonPropsArray) {
            JSONObject jsonPropsObj = (JSONObject) jsonPropsArray1;                    
            data.setId(program.getId().replace("pg", "d") + cont++);
            data.setLabel(jsonPropsObj.get("name").toString());
            data.setDescription(jsonPropsObj.get("description").toString());
            data.setType(jsonPropsObj.get("type").toString());
            data.setCategory(jsonPropsObj.get("category").toString()); 
            if(jsonPropsObj.get("value") != null)
                data.setValue(jsonPropsObj.get("value").toString());
            else
                data.setValue("");                                    
            new DataFact().printDataFact(data, output);     
            hasDefaultParam(data, program.getId());
        }                                         
    }
    
    public void hasDefaultParam(Data data, String programId){
        int contIn = 1;
        Port port = new Port();
        PortFact portFact = new PortFact();
        
        for(Object getJsonConnectionArray1 : json.getJsonConnectionArray()){
            JSONObject jsonPort = (JSONObject)getJsonConnectionArray1;
            if(data.getBlockId().equals(jsonPort.get("destinationBlockGuid"))){                
                port.setId(programId.replace("pg", "pin") + contIn++);
                port.setLabel(jsonPort.get("destinationPortName").toString());
                port.setType("inputPort");
                port.setSignature(null);               
                new HasDefaultParam().printHasDefaultParam(port.getId(), data.getId(), output);     
            }
        }    
    }
        
    private DataVersion getDataVersion(String versionId) {
        Node alreadyExist = null;
        try {
            alreadyExist = escIdIndex.get(DataVersion.ESC_ID, versionId).getSingle();            
        } catch (java.util.NoSuchElementException e) {
            System.out.println("Caught Exception");
            alreadyExist = escIdIndex.get(DataVersion.ESC_ID, versionId).iterator().next();
        }

        if (alreadyExist == null) {
            return null;
        } else {          
            return new DataVersion(alreadyExist);
        }
    }

    private boolean isTransientDataNode(Node node) {
        return "Transient Data".equals(node.getProperty("TYPE", null));
    }

    private String getIdString(Node node) {
        try {
            if ("DataVersion".equals(node.getProperty("TYPE", null))) {
                DataVersion dataVersion = new DataVersion(node);

                return dataVersion.getEscId();
            } else if ("Service Run".equals(node.getProperty("TYPE", null))) {
                ServiceRun serviceRun = new ServiceRun(node);

                ServiceVersion serviceVersion = new ServiceVersion(node.getRelationships(Direction.OUTGOING, ProvenanceRelationshipTypes.INSTANCE_OF).iterator().next().getEndNode());

                return serviceVersion.getEscId();
            } else if ("Workflow Run".equals(node.getProperty("TYPE", null))) {
                WorkflowRun workflowRun = new WorkflowRun(node);

                WorkflowVersion workflowVersion = new WorkflowVersion(node.getRelationships(Direction.OUTGOING, ProvenanceRelationshipTypes.RUN_OF).iterator().next().getEndNode());

                return workflowVersion.getEscId();
            } else if ("User".equals(node.getProperty("TYPE", null))) {
                User user = new User(node);
                return user.getEscId();
            }
        } catch (Throwable throwable) {
            System.out.println("Problem getting node Id" + throwable);
        }

        return String.valueOf(node.getId());
    }

    private Node traversTranientNode(Node node, Direction direction) {
        if (isTransientDataNode(node)) {
            if (direction == Direction.OUTGOING)
                return traversTranientNode(node.getRelationships(direction).iterator().next().getEndNode(), direction);
            else
                return traversTranientNode(node.getRelationships(direction).iterator().next().getStartNode(), direction);
        } else
            return node;
    }                                                   
}

