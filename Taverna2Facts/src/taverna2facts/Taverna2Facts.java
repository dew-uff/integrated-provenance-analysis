package taverna2facts;

import java.io.FileWriter;
import java.io.IOException;
import java.sql.SQLException;
import prospective.Port;
import prospective.Program;
import prospective.Workflow;
import prospective.relationship.HasInPort;
import prospective.relationship.HasOutPort;
import prospective.relationship.HasSubProgram;
import retrospective.Data;
import retrospective.Execution;
import retrospective.User;
import retrospective.WExecution;
import retrospective.relationship.HadInPort;
import retrospective.relationship.HadOutPort;
import retrospective.relationship.HadPlan;
import retrospective.relationship.Used;
import retrospective.relationship.WasAssociatedWith;
import retrospective.relationship.WasDerivedFrom;
import retrospective.relationship.WasGeneratedBy;
import retrospective.relationship.WasInformedBy;
import retrospective.relationship.WasPartOf;
import utils.FileManager;
import utils.RDFManager;

/**
 *
 * @author Well
 */
public class Taverna2Facts {
    
    /*public static void main(String [] args)throws ClassNotFoundException, SQLException { 
          
        StringBuffer output;
        FileWriter writer;         
        
        //Retrospective Provenance
        RDFManager rdf = new RDFManager("C:\\Users\\Well\\Dropbox\\Workspace\\Taverna2Facts\\Provenance4\\workflowrun.prov.ttl");        
    
        output = new StringBuffer();
        //output.append("\ndataSet(4,'Taverna').\n");
        
        new Execution(output, rdf);
        new WExecution(output, rdf);
        new Data(output, rdf);
        new WasGeneratedBy(output, rdf);
        new Used(output, rdf);
        new WasInformedBy(output, rdf);
        new WasPartOf(output, rdf);
        new WasAssociatedWith(output, rdf); 
        new HadPlan(output, rdf);
        new HadInPort(output, rdf);
        new HadOutPort(output, rdf);
        new WasDerivedFrom(output, rdf); 
        new Port(output, rdf); //Prospective, beccause there is a error in the wfdesc file (input ports are also classified as output port)               
        new User(output, rdf);
        
        //Prospective Provenance
        RDFManager rdf2 = new RDFManager("C:\\Users\\Well\\Dropbox\\Workspace\\Taverna2Facts\\Provenance4\\.ro\\annotations\\workflow.wfdesc.ttl"); 
        
        new Workflow(output, rdf2);
        new Program(output, rdf2);
        new HasSubProgram(output, rdf2); 
        new HasInPort(output, rdf2);
        new HasOutPort(output, rdf2);   
        
        output.append( "%\n" +
                        "%Rules\n" +
                        "%\n" +
                        "[library(dcg/basics)].\n" +
                        ":-use_module(library(clpfd)).\n" +
                        "%=============================================================\n" +
                        "%1.Retrieve all programs with their input and output ports for the workflow 'w' and provenance graph 'g'. (C1)\n" +
                        "%8.Retrieve all programs with their input and output ports for each workflow specification. (C4)\n" +
                        "\n" +
                        "query_1_8(DstName, WkfName, PgId, PgName, InPortId, OutPortId, InPortName, OutPortName) :-\n" +
                        "	dataSet(DsId, DstName),\n" +
                        "	hasDataSet(WkfId, DsId),\n" +
                        "	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,WkfName)]),\n" +
                        "	hasSubProgram(WkfId, PgId),\n" +
                        "	entity(PgId, [prop(prov:type,['prov:plan','provone:program']),prop(prov:label,PgName)]),\n" +
                        "	(\n" +
                        "	  (\n" +
                        "	    hasInPort(PgId,InPortId),\n" +
                        "	    entity(InPortId, [prop(prov:type,['provone:port']),prop(_,InPortName)])\n" +
                        "	  );\n" +
                        "	  (\n" +
                        "	    hasOutPort(PgId,OutPortId) ,\n" +
                        "	    entity(OutPortId, [prop(prov:type,['provone:port']),prop(_,OutPortName)])\n" +
                        "	  )\n" +
                        "	), nl.\n" +
                        "\n" +
                        "inPorts(PgId) :-\n" +
                        "	hasInPort(PgId, PortId),\n" +
                        "	entity(PortId, [prop(prov:type,['provone:port']),prop(_,Port)]),\n" +
                        "	write('Input: '),\n" +
                        "	write(Port), nl.\n" +
                        "\n" +
                        "outPorts(PgId) :-\n" +
                        "	hasOutPort(PgId, PortId),\n" +
                        "	entity(PortId, [prop(prov:type,['provone:port']),prop(_,Port)]),\n" +
                        "	write('Output: '),\n" +
                        "	write(Port),nl.\n" +
                        "%=============================================================\n" +
                        "%2.Retrieve all activity executions with their generated data for the workflow execution w and provenance graph g. (C2)\n" +
                        "%9.Retrieve all activity executions with their generated data for each workflow execution. (C5)\n" +
                        "\n" +
                        "query_2_9(DstName, WExName, ExName) :-\n" +
                        "	dataSet(DsId, DstName),\n" +
                        "	hasDataSet(WkfId, DsId),\n" +
                        "	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']),_]),\n" +
                        "	activity(WEx,[prop(prov:type,provone:execution),prop(prov:label,WExName),_,_,_]),\n" +
                        "	hadPlan(WEx, WkfId),\n" +
                        "	wasPartOf(Ex, WEx),\n" +
                        "	activity(Ex,[prop(prov:type,provone:execution),prop(prov:label,ExName),_,_,_]),nl.\n" +
                        "\n" +
                        "%=============================================================\n" +
                        "%6.Retrieve all programs (plans) of each execution and their input parameters for the workflow execution w and provenance graph 'g'.(C3)\n" +
                        "%14.Retrieve all programs (plans) of each  execution and their input parameters for each workflow wf.(C6)\n" +
                        "\n" +
                        "query_6_14(DstName, WExName, ExId, ExName, PgId, PgName, DataName, DataValue) :-\n" +
                        "	dataSet(DsId, DstName),\n" +
                        "	hasDataSet(WkfId, DsId),\n" +
                        "	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']),_]),\n" +
                        "	activity(WEx,[prop(prov:type,provone:execution),prop(prov:label,WExName),_,_,_]),\n" +
                        "	hadPlan(WEx, WkfId),\n" +
                        "	wasPartOf(ExId, WEx),\n" +
                        "	entity(PgId, [prop(prov:type,['prov:plan','provone:program']),prop(prov:label,PgName)]),\n" +
                        "	activity(ExId,[prop(prov:type,provone:execution),prop(prov:label,ExName),_,_,_]),\n" +
                        "	hadPlan(ExId, PgId),\n" +
                        "	hasInPort(PgId, PortId),\n" +
                        "	hasDefaultParam(PortId, DataId),\n" +
                        "	entity(DataId, [prop(prov:type, ['provone:data']), prop(prov:label,DataName),prop(prov:type,'Boolean'),prop(prov:value,DataValue)]), nl.\n" +
                        "\n" +
                        "%=============================================================\n" +
                        "%7.Retrieve the workflow version, and the time consumed by each workflow execution for the workflow wf and provenance graph g. (C3)\n" +
                        "%13.Retrieve the time consumed by each workflow execution for each workflow and provenance graph.  (C6)\n" +
                        "\n" +
                        "executionTime(PGName, WkfName, WExName, ExTime) :-\n" +
                        "	dataSet(PGId, PGName),\n" +
                        "	hasDataSet(WkfId, PGId),\n" +
                        "	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']), prop(_,WkfName)]),\n" +
                        "	activity(WExId, [_, prop(prov:label, WExName),prop(prov:startTime, StartTime), prop(prov:endTime, EndTime), _]),\n" +
                        "	hadPlan(WExId,WkfId),\n" +
                        "	parse_time(StartTime, Stamp1),\n" +
                        "	parse_time(EndTime, Stamp2),\n" +
                        "	ExTime is Stamp2 - Stamp1, nl.\n" +
                        "\n" +
                        "%=============================================================\n" +
                        "%3.Retrieve the time consumed by each activity execution for the workflow execution w and provenance graph g. (C2)\n" +
                        "%10.Retrieve the time consumed by each activity execution for each workflow execution.  (C5)\n" +
                        "\n" +
                        "query_3_10(DstName, WExName, ExName, ExTime) :-\n" +
                        "	dataSet(DsId, DstName),\n" +
                        "	hasDataSet(WkfId, DsId),\n" +
                        "	activity(WExId, [_, prop(prov:label, WExName),_,_,_]),\n" +
                        "	hadPlan(WExId,WkfId),\n" +
                        "	activity(ExId, [_, prop(prov:label, ExName),prop(prov:startTime, StartTime), prop(prov:endTime, EndTime), _]),\n" +
                        "	wasPartOf(ExId,WExId),\n" +
                        "	parse_time(StartTime, Stamp1),\n" +
                        "	parse_time(EndTime, Stamp2),\n" +
                        "	ExTime is Stamp2 - Stamp1, nl.\n" +
                        "\n" +
                        "%=============================================================\n" +
                        "%5.Retrieve the complete dataflow trace of the output data d for the workflow execution w and provenance graph g. (C2)\n" +
                        "%12.Retrieve the complete dataflow trace and the workflow specification for each workflow execution. (C6)\n" +
                        "\n" +
                        "dataTrace(PGName, WkfName, WExName, OutputId, InputId) :-\n" +
                        "	setof(InputId,OutputId^trace(PGName, WkfName, WExName, OutputId, InputId), InputId).\n" +
                        "\n" +
                        "trace(PGName, WkfName, WExName, OutputId, InputId) :-\n" +
                        "	dataSet(PGId, PGName),\n" +
                        "	hasDataSet(WkfId, PGId),\n" +
                        "	activity(WExId,[prop(prov:type,provone:execution),prop(prov:label, WExName),_,_,_]),\n" +
                        "	entity(WkfId,[prop(prov:type,ETypes),prop(prov:label,WkfName)]),\n" +
                        "	member('provone:workflow', ETypes),\n" +
                        "	hadPlan(WExId,WkfId),\n" +
                        "	wasPartOf(ExId, WExId),\n" +
                        "	wasGeneratedBy(OutputId, ExId),\n" +
                        "	dataFlow(OutputId, InputId), nl.\n" +
                        "\n" +
                        "dataFlow(Output, Input) :-\n" +
                        "	wasDerivedFrom(Output, Input).\n" +
                        "\n" +
                        "dataFlow(Output, Input) :-\n" +
                        "	wasDerivedFrom(Output, X),\n" +
                        "	dataFlow(X, Input).\n" +
                        "\n" +
                        "%============================================================\n" +
                        "%4.Retrieve the complete activity execution trace that influenced the generation of the data d. (C2)\n" +
                        "%11.Retrieve the ports, workflow executions, provenance graphs, and the complete activity execution trace that influenced the generation of all data. (C6)\n" +
                        "\n" +
                        "activityTrace(DstName, WExName, PortId, ExId2, DataId) :-\n" +
                        "	dataSet(DsId, DstName),\n" +
                        "	hasDataSet(WkfId, DsId),\n" +
                        "	activity(WExId, [_, prop(prov:label, WExName),_,_,_]),\n" +
                        "	hadPlan(WExId,WkfId),\n" +
                        "	wasPartOf(ExId, WExId),\n" +
                        "	(   hadInPort(ExId,PortId); hadOutPort(ExId, PortId)),\n" +
                        "	wasGeneratedBy(DataId, ExId),\n" +
                        "	activityFlows(ExId,ExId2), nl.\n" +
                        "\n" +
                        "activityFlows(Ex1, Ex2) :-\n" +
                        "	wasInformedBy(Ex1, Ex2), nl,\n" +
                        "	write('Execution = '), write(Ex1).\n" +
                        "\n" +
                        "activityFlows(Ex1, Ex2) :-\n" +
                        "	wasInformedBy(Ex1, Ex3),\n" +
                        "	activityFlows(Ex3, Ex2).\n" +
                        "\n" +
                        "rule13(ExId2,DataId) :-\n" +
                        "	wasGeneratedBy(DataId, ExId),\n" +
                        "	activityFlows(ExId,ExId2), nl.\n"   +                     
                        "member(X,[X|_]).\n" +
                                "member(X,[_|T])  :-  member(X,T). ");   
        
            try {
                FileManager fileManager = new FileManager();
                writer = fileManager.getWriter("C:\\Users\\Well\\Dropbox\\Workspace\\Taverna2Facts\\TavernaFacts.pl", true); //path, append (true) or new file (false)  
                writer.write(output.substring(0, output.length()-1));
                writer.close();  
            } catch(IOException e) {
                e.printStackTrace();
            }      
    
    }*/
}
