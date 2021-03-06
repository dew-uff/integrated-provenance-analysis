package br.uff.ic.parser;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import br.uff.ic.io.FileManager;

import javax.xml.parsers.SAXParserFactory; 
import javax.xml.parsers.SAXParser; 
import br.uff.ic.parser.*;

/**
 * Modified by Wellington Moreira de Oliveira in 07/11/2017
 */

public class XMLParser extends DocumentParser{
	private static int contadorIdPai = 0;
	private long totalTime = 0;
	private Boolean bClearData = false;
	private Boolean bResetLastId = false;
	private static final String PATHCONFIG = "config.txt";            
	
    private void escreverId(Integer contadorId){
    	File file = new File(PATHCONFIG);   
    	FileWriter fw;
		try {
			fw = new FileWriter(file);
			fw.write(contadorId.toString());
			fw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
    }
    
    private Integer obterId()
    {
    	File file = new File(PATHCONFIG);   
    	FileReader fr;
		try {
			fr = new FileReader(file);  
			BufferedReader br = new BufferedReader(fr);  
    	    String linha = br.readLine();
    	    br.close();
    	    fr.close();
    	    return Integer.parseInt(linha);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return 0;
    }
	
	public void executeParse(HashMap<String, File> fileList, String factsPath, int wkfEx){
		//HashMap<String, Document> documentList = parserHandler(fileList);
		HashMap<String, Document> documentList  = DocumentParser.getInstance().parserHandler(fileList);
		Set<String> keyNames = documentList.keySet();
		
		 if  ( getClearData() )
         {
         	FileManager arquivo = new FileManager(factsPath);
         	arquivo.clearDataFacts();
         }
		 
		 if ( bResetLastId ){
			 contadorIdPai = 0;
		 }
		 else{
			 contadorIdPai = obterId();
		 }
		 
    	
		long tempoInicial = System.currentTimeMillis();
		
    	for(String name : keyNames){
    		contadorIdPai++;
    		String stringProlog = process(documentList.get(name));
    		//System.out.println(stringProlog);
    		FileManager fileManager = new FileManager(factsPath);
    		fileManager.writeFacts(stringProlog);
    	}
    	
    	long tempoFinal = System.currentTimeMillis();  
    	setTotalTime((tempoFinal - tempoInicial) / 1000);
    	  
    	System.out.printf("Tempo em segundos: " + getTotalTime());
    	escreverId(contadorIdPai);
	}
        
        public void executeParseSax(HashMap<String, File> fileList, String factsPath, String wkfEx){
            Set<String> keyNames = fileList.keySet();                     
            
            if  ( getClearData() )
            {
            	FileManager arquivo = new FileManager(factsPath);
            	arquivo.clearDataFacts();
            }
            
            long tempoInicial = System.currentTimeMillis();
            
            DefaultHandleSAX handler = new DefaultHandleSAX(factsPath, wkfEx);            
            handler.setResetLastId(bResetLastId);
            SAXParserFactory factory = SAXParserFactory.newInstance();
            
            //Commented by Wellington at 05/11/2017 
            /*String indexRule = "indexOf([Element|_], Element, 1). % We found the element";
    		indexRule +="indexOf([_|Tail], Element, Index):-";
    		indexRule +="indexOf(Tail, Element, Index1), % Check in the tail of the list";
    		indexRule +="Index is Index1+1.  % and increment the resulting index \n";
    		
    		
    		String printRules = buildPrintRules();*/
                                   
            for(String name : keyNames){
                try{
                     SAXParser saxParser = factory.newSAXParser();
                     String path = fileList.get(name).getAbsolutePath();
                     saxParser.parse( new File(path), handler ); 
                }catch (Throwable t) {
                    t.printStackTrace();
                }
                contadorIdPai++;
               /* String stringProlog = process(documentList.get(name));
                //System.out.println(stringProlog);*/
                
               //Commented by Wellington at 05/11/2017 
              /*FileManager fileManager = new FileManager();
                fileManager.writeFacts(indexRule);
                fileManager.writeFacts(printRules);*/
            }

            long tempoFinal = System.currentTimeMillis();  
            setTotalTime((tempoFinal - tempoInicial) / 1000);

            System.out.printf("Tempo em segundos: " + getTotalTime()+ "\n");
	}
	
    
    private String buildPrintRules()
    {
    	String printRules = "";
    	
    	printRules = " printXML(LISTVAR,NODENAMESLIST,TREE,RULE) :- "; 
    	printRules +=  " findall( LISTVAR,RULE,RESULTLIST),printXMLRuleList(RESULTLIST,NODENAMESLIST,TREE,STACK,LASTTAG,LASTDEPHT),!.\n";
    	
    	printRules += " printXMLRuleList([HRESULT|TRESULT],NODENAMESLIST,TREE,STACK,LASTTAG,LASTDEPHT) :- \n"; 
    	printRules += "  printXMLRule(NODENAMESLIST,HRESULT,TREE,STACK,RESULTSTACK,LASTDEPHT,NEWLASTDEPHT,LASTTAG,RESULTTAG), \n";
    	printRules += "  printXMLRuleList(TRESULT,NODENAMESLIST,TREE,RESULTSTACK,RESULTTAG,NEWLASTDEPHT). \n";
    	
    	
    	printRules += "  printXMLRuleList([],NODENAMESLIST,TREE,STACK,LASTTAG,LASTDEPHT):-printCloseNodes(LASTTAG).\n";
    	
    	printRules += "  printXMLRule([],[],TREE,STACK,RESULTSTACK,LASTDEPHT,NEWLASTDEPHT,LASTTAG,NEWLASTTAG):- \n";
    	printRules += "     (nonvar(STACK)->copy(STACK,RESULTSTACK);true), (nonvar(LASTTAG)->copy(LASTTAG,NEWLASTTAG);true), \n";
    	printRules += "   (NEWLASTDEPHT = LASTDEPHT). \n";
    	
    	
    	printRules += "  printXMLRule([HNODE|TNODE],[HVAR|TVAR],TREE,STACK,RESULTSTACK,LASTDEPHT,NEWLASTDEPHT,LASTTAG,NEWLASTTAG) :-  \n";
    	printRules += "    depht(TREE,HNODE,NEXTNEWLASTDEPHT), checkPrintCLoseNode(LASTDEPHT,NEXTNEWLASTDEPHT,HVAR,LASTTAG,STACK,TMPNEWSTACK),checkPrintOpenNode(TREE,HNODE,HVAR,STACK), \n";
    	printRules += "    addElementId(TREE,HNODE,HVAR,STACK,NEWSTACK),(var(NEWSTACK)->copy(STACK,NEWSTACK);true), \n";
    	printRules += "    addMapElementId(TREE,HNODE,HNODE,HVAR,TMPNEWSTACK,NEXTLASTTAG),(var(NEXTLASTTAG)-> (nonvar(TMPNEWSTACK)-> copy(TMPNEWSTACK,NEXTLASTTAG);true);true), \n";
    	printRules += "    printXMLRule(TNODE,TVAR,TREE,NEWSTACK,NEWRESULTSTACK,NEXTNEWLASTDEPHT,RETURNLASTDEPHT,NEXTLASTTAG,NEWRESULTTAG), \n";
    	printRules += "    joinLists(NEWRESULTTAG,NEXTLASTTAG,TMPTAG),distinct(TMPTAG,NEWLASTTAG),cleanList(TMPTAG,NEWLASTTAG), \n";	
    	printRules += "    joinLists(NEWRESULTSTACK,NEWSTACK,TMP),distinct(TMP,RESULTSTACK),cleanList(TMP,RESULTSTACK),NEWLASTDEPHT = RETURNLASTDEPHT . \n";
    	
    	printRules += "  printNode(TREE,NODENAME,NODEVALUE) :-  nonvar(NODEVALUE) ->  (isLeaf(TREE,NODENAME) ->  depht(TREE,NODENAME,NSPACE),printOpenNode(NODENAME,NODEVALUE,NSPACE), \n";
    	printRules += "    	printCloseNode(NODENAME,NODEVALUE,NSPACE) \n";
    	printRules += "    	; depht(TREE,NODENAME,NSPACE), printOpenNode(NODENAME,NODEVALUE,NSPACE) ); true. \n";
    	
    	printRules += "  checkPrintCLoseNode(LASTDEPHT,NEXTNEWLASTDEPHT,NODEID,LASTTAG,STACK,NEWLASTTAG) :- nonvar(LASTDEPHT)-> \n"; 
    	printRules += "       (nonvar(NEXTNEWLASTDEPHT),NEXTNEWLASTDEPHT < LASTDEPHT -> \n"; 
    	printRules += "       ( element(1,LASTTAG,NODE),atom_chars(NODE,LISTCHARS),indexOfElement(LISTCHARS,'-',CHARPOS),split(LISTCHARS,CHARPOS+1,LIST1, LIST2), \n";
    	printRules += "  	   atom_chars(PRINTNODE,LIST2),PRINTDEPHT is LASTDEPHT-1,printCloseNode(PRINTNODE,_,PRINTDEPHT), \n";
    	printRules += "  	   removeListHead(LASTTAG,NEWLASTTAG) \n";
    	printRules += "  	 );nonvar(LASTTAG)->(var(NEWLASTTAG)-> copy(LASTTAG,NEWLASTTAG));true);nonvar(LASTTAG)->(var(NEWLASTTAG)-> copy(LASTTAG,NEWLASTTAG));true. \n";
			 
		
    	printRules += "  checkPrintOpenNode(TREE,HNODE,HVAR,LISTID)	:-  \n";
    	printRules += "       var(LISTID)->(printNode(TREE,HNODE,HVAR));(nonvar(LISTID),nonvar(HVAR), \\+member(HVAR,LISTID) -> printNode(TREE,HNODE,HVAR)) \n";
    	printRules += "  	 ;true. \n";
    	
    	
    	
    	
    	printRules += "  printOpenNode(NODENAME,NODEVALUE,NSPACE) :- ident(NSPACE),print('<'),write(NODENAME),print( '>'),nl, NEWNSPACE is NSPACE+3, ident(NEWNSPACE), write(NODEVALUE),nl. \n";
    	printRules += "  printCloseNode(NODENAME,NODEVALUE,NSPACE) :- ident(NSPACE),print('</'),write(NODENAME),print( '>'),nl. \n";
    	
    	printRules += "  ident(0). \n";
    	printRules += "  ident(N) :- N>0, print(' '), M is N-1, ident(M). \n";
    	
    	
    	printRules += "  findnode(t(NODE,F),NODENAME,SUBTREE) :-  ( NODE == NODENAME -> SUBTREE = F; findnode(F,NODENAME,SUBTREE) ). \n";
        printRules += "  findnode([],NODENAME,SUBTREE). \n";
        printRules += "  findnode([T|Ts],NODENAME,SUBTREE) :- findnode(T,NODENAME,SUBTREE), findnode(Ts,NODENAME,SUBTREE). \n";
    	
    	printRules += "  printCloseNodes([]).\n";
        printRules += "  printCloseNodes(NODEIDMAP) :- length(NODEIDMAP, NLENGHT), printCloseMapNodes(NODEIDMAP,NLENGHT). \n";			
        
		printRules += "  printCloseMapNodes([],0).\n";
        printRules += "  printCloseMapNodes([],1). \n";
		
        printRules += "  printCloseMapNodes(NODEIDMAP, NLENGHT) :- element(1,NODEIDMAP,NODE),atom_chars(NODE,LISTCHARS),indexOfElement(LISTCHARS,'-',CHARPOS),split(LISTCHARS,CHARPOS+1,LIST1, LIST2), \n";
        printRules += "  				atom_chars(PRINTNODE,LIST2),PRINTDEPHT is NLENGHT-1,printCloseNode(PRINTNODE,_,PRINTDEPHT),removeListHead(NODEIDMAP,NEWNODEIDMAP), \n";
        printRules += "  				NEWNLENGHT is NLENGHT -1 ,printCloseMapNodes(NEWNODEIDMAP,NEWNLENGHT). \n";
    	
    	
        printRules += "  removeListHead([_|Tail], Tail). \n";
    	
        printRules += "  isLeaf(TREE,NODENAME) :- findnode(TREE,NODENAME,SUBTREE),length(SUBTREE,0). \n";
    	
    	
        printRules += "  depht(T,NODENAME,DEPHT) :- depht(T,NODENAME,0,DEPHT). \n";
        printRules += "  depht(t(NODE,F),NODENAME,CURRENTDEPHT,DEPHT) :- ( NODE == NODENAME -> DEPHT = CURRENTDEPHT;(NEWCURRENTDEPHT is CURRENTDEPHT +1,depht(F,NODENAME,NEWCURRENTDEPHT,DEPHT)) ). \n";
        printRules += "  depht([],NODENAME,CURRENTDEPHT,DEPHT). \n";
        printRules += "  depht([T|Ts],NODENAME,CURRENTDEPHT,DEPHT) :- depht(T,NODENAME,CURRENTDEPHT,DEPHT),depht(Ts,NODENAME,CURRENTDEPHT,DEPHT). \n";
    	
        printRules += "  add(X,List,[X|List]). \n";
    	
        printRules += "  copy(LIST,LISTRESULT) :- append(LIST,[],LISTRESULT). \n";

        printRules += "  addFirstItem(ITEM,LISTRESULT) :- append([ITEM],[],LISTRESULT). \n";
    	
        printRules += "  addElementId(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST) :- (nonvar(NODEVALUE),\\+isLeaf(TREE,NODENAME) ->addListId(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST));true. \n";
    	
        printRules += "  addElement(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST) :- (nonvar(NODEVALUE),\\+isLeaf(TREE,NODENAME) ->addListElement(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST));true. \n";
    	
    	
        printRules += "  addMapElementId(TREE,NODENAME,NODEVALUE,NODEID,OLDLIST,NEWLIST):-  \\+isLeaf(TREE,NODENAME) ->(nonvar(NODEID),nonvar(NODEVALUE), \n";
        printRules += "     num_atom(NODEID, NODEIDSTRING),text_concat(NODEIDSTRING,'-',NODEIDHIFEN),text_concat(NODEIDHIFEN,NODEVALUE,NODEMAP), \n";
        printRules += "  	addElement(TREE,NODENAME,NODEMAP,OLDLIST, NEWLIST));true. \n";
				
		
        printRules += "  addListId(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST)  :- (number(NODEVALUE)->(nonvar(OLDLIST)->(\\+ memberchk(NODEVALUE,OLDLIST)->append([NODEVALUE],OLDLIST,NEWLIST);true);(copy([NODEVALUE],NEWLIST))));true. \n";
	    
	    
        printRules += "  addListElement(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST)  :- (nonvar(OLDLIST)->(append([NODEVALUE],OLDLIST,NEWLIST));(copy([NODEVALUE],NEWLIST))). \n";
	    
	    
        printRules += "  addNewItemList(ITEM,OLDLIST,NEWLIST) :- nonvar(OLDLIST)->( \\+ memberchk(ITEM,OLDLIST)->append([ITEM],OLDLIST,NEWLIST)).  \n";
				
        printRules += "  idInList(ID,LIST) :-   nonvar(ID),number(ID), memberchk(ID,LIST). \n";
	    
        printRules += "  idNotInList(ID,LIST) :-   nonvar(ID),number(ID), \\+ memberchk(ID,LIST). \n";
	    
	    
        printRules += "  joinLists(LISTA,LISTB,RESULTLIST) :- (nonvar(LISTA),nonvar(LISTB)) -> (append(LISTA,LISTB,RESULTLIST)) ; (nonvar(LISTA),copy(LISTA,RESULTLIST)); (nonvar(LISTB),copy(LISTB,RESULTLIST));true. \n";
    	
	    
        printRules += "  member1(X,[H|_]) :- X==H,!. \n";
        printRules += "  member1(X,[_|T]) :- member1(X,T). \n";
	     
        printRules += "  distinct([],[]). \n";
        printRules += "  distinct([H|T],C) :- member1(H,T),!, distinct(T,C). \n";
        printRules += "  distinct([H|T],[H|C]) :- distinct(T,C). \n";
        
		printRules += "  remv([], []).\n";
        printRules += "  remv([H|T], N) :- var(H), !, remv(T, N).\n";
        printRules += "  remv([H|T], [H|N]) :- remv(T, N).\n";
  
        printRules += "  cleanList(LISTA, LISTB) :- nonvar(LISTA)->(remv(LISTA,LISTC),distinct(LISTC,LISTB));true.\n";
        
        printRules += "  %atom chars(Atom,List)\n";    
        printRules += "  %element(Pos, List, Element) i\n";
        printRules += "  %% split(L,N,L1,L2) :- the list L1 contains the first N elements\n";            
        printRules += "  split(L,0,[],L).\n";
        printRules += "  split([X|Xs],N,[X|Ys],Zs) :- N > 0, N1 is N - 1, split(Xs,N1,Ys,Zs).\n";

        printRules += "  indexOfElement([Element|_], Element, 0):- !.\n";
        printRules += "  indexOfElement([_|Tail], Element, Index):-\n";
        printRules += "  indexOfElement(Tail, Element, Index1),\n";
        printRules += "  !,\n";
        printRules += "  Index is Index1+1.\n";
	    
    	return printRules;
    }
        
	private String process(Document doc){
		ArrayList<String> factsList = new ArrayList<String>();
		
		
		String indexRule = "indexOf([Element|_], Element, 1). % We found the element";
		indexRule +="indexOf([_|Tail], Element, Index):-";
		indexRule +="indexOf(Tail, Element, Index1), % Check in the tail of the list";
		indexRule +="Index is Index1+1.  % and increment the resulting index \n";
		factsList.add(indexRule);
		
		String printRules = buildPrintRules();
		factsList.add(printRules);
                
		// Raiz
		Element raiz = doc.getDocumentElement();
		factsList.add(raiz.getNodeName().toLowerCase() + "(" + contadorIdPai + "). \n");
		
		if(raiz.hasAttributes()){
			NamedNodeMap attributeList = raiz.getAttributes();
			
			for(int j=0; j < attributeList.getLength(); j++){
				//o coment�rio abaixo no replace � porque n�o � necess�rio. Est� comentado para caso tenha a necessidade de voltar
				factsList.add(attributeList.item(j).getNodeName().toLowerCase().replace(":", "_") + "("+contadorIdPai+ ", " + ++contadorIdPai +", '" + attributeList.item(j).getNodeValue().replace("'", "\"")/*.replace("\t", "").replace("\n", "")*/ + "'). \n");
			}
		}
		
		processChildren((Node)raiz, factsList);
		
		String stringProlog = "";
		for(Iterator<String> it = factsList.iterator(); it.hasNext();){
			int k = factsList.indexOf(it.next());
			stringProlog = stringProlog.concat(factsList.get(k));
		}
		
		return stringProlog;
	}
	
	static void processChildren(Node node, ArrayList<String> factsList){
		node.normalize();
		
		int idPai = contadorIdPai;

		if (node.hasChildNodes())
		{
			NodeList nl = node.getChildNodes();
			for (int i=0; i < nl.getLength();i++)
			{
				if(!nl.item(i).getNodeName().equals("#text"))
				{
					factsList.add(nl.item(i).getNodeName().toLowerCase() + "("+Integer.toString(idPai)+ ", ");
					factsList = checkNode(nl.item(i), factsList);
				}
				processChildren(nl.item(i), factsList);
			}		  
		}
	}
	
	static ArrayList<String> checkNode(Node node, ArrayList<String> factsList){
		NodeList childList = node.getChildNodes();
		boolean hasElementChild = false;
		boolean hasTextChild = false;
		boolean hasAttribute = false;
		boolean isMixed = false;
		boolean isNotEmpty = node.hasChildNodes();
		
		int idPai = contadorIdPai;
		int idProprio = 0;
		
		ArrayList<String> mixedElementsFactsList = new ArrayList<String>();
		if(isNotEmpty){
			for (int i=0; i < childList.getLength();i++){
				Node child = childList.item(i);
				if(child.getNodeType() == Node.ELEMENT_NODE){
					hasElementChild = true;
				}
				if((child.getNodeType() == Node.TEXT_NODE) && (child.getNodeValue() != null)){
					hasTextChild = true;
				}
				if(hasElementChild && hasTextChild){
					if(child.getNodeValue() != null){
						isMixed = true;
						hasTextChild = false;
						break;
						//mixedElementsFactsList.add("xml/elementoMisto(id"+Integer.toString(idPai)+", '" + child.getNodeValue().replace("'", "´").replace("\t", "").replace("\n", "") + "').\n");
					}
				}
			}
		}
		if(node.hasAttributes()){
			hasAttribute = true;
		}
		
		int index = factsList.size()-1;
		String content = factsList.get(index);
		
		if(isNotEmpty){
			if((hasElementChild == false) && (hasAttribute == false) && hasTextChild){
				
				contadorIdPai++;
				idProprio = contadorIdPai;
				
				//o coment�rio abaixo no replace � porque n�o � necess�rio. Est� comentado para caso tenha a necessidade de voltar
				factsList.set(index, content + Integer.toString(idProprio)+", " +("'" + node.getFirstChild().getNodeValue().replace("'", "\"")/*.replace("\t", "").replace("\n", "")*/ + "'). \n"));
				
			} else if((hasElementChild == false) && hasAttribute && hasTextChild){
				NamedNodeMap attributeList = node.getAttributes();
				
				contadorIdPai++;
				idProprio = contadorIdPai;
				//o coment�rio abaixo no replace � porque n�o � necess�rio. Est� comentado para caso tenha a necessidade de voltar
				factsList.set(index, content + (Integer.toString(idProprio)/*+ ", " /*+ ++contadorIdPai*/ + ", '" + node.getFirstChild().getNodeValue()/*.replace("'", "''").replace("\t", "").replace("\n", "")*/ + "'). \n"));
				
				for(int j=0; j < attributeList.getLength(); j++){
					//o coment�rio abaixo no replace � porque n�o � necess�rio. Est� comentado para caso tenha a necessidade de voltar
					factsList.add(attributeList.item(j).getNodeName().toLowerCase() + "(" + Integer.toString(idProprio)+ ", " + ++contadorIdPai +  ", '" + attributeList.item(j).getNodeValue().replace("'", "\"")/*.replace("\t", "").replace("\n", "")*/ + "'). \n");
				}
				
			} else if(hasElementChild){
				contadorIdPai++;
				idProprio = contadorIdPai;
				
				factsList.set(index, content + (Integer.toString(idProprio)+"). \n"));
				
				if(hasAttribute){
					NamedNodeMap attributeList = node.getAttributes();
					
					for(int j=0; j < attributeList.getLength(); j++){
						//o coment�rio abaixo no replace � porque n�o � necess�rio. Est� comentado para caso tenha a necessidade de voltar
						factsList.add(attributeList.item(j).getNodeName().toLowerCase() + "(" + Integer.toString(idProprio)+", " + ++contadorIdPai + ", '" + attributeList.item(j).getNodeValue().replace("'", "\"")/*.replace("\t", "").replace("\n", "") */+ "'). \n");
					}
				}
			}
		}
		else{
			if(hasAttribute){
				NamedNodeMap attributeList = node.getAttributes();
				
				contadorIdPai++;
				idProprio = contadorIdPai;
				factsList.set(index, content + (Integer.toString(idProprio)+", " + ++contadorIdPai + ", ''). \n"));
				
				for(int j=0; j < attributeList.getLength(); j++){
					//o coment�rio abaixo no replace � porque n�o � necess�rio. Est� comentado para caso tenha a necessidade de voltar
					factsList.add(attributeList.item(j).getNodeName().toLowerCase() + "(" + Integer.toString(idProprio)+", " /*+ ++contadorIdPai*/+ ", '" + attributeList.item(j).getNodeValue().replace("'", "\"")/*.replace("\t", "").replace("\n", "") */+ "'). \n");
				}
			}
			else{
				factsList.set(index, content + ("''). \n"));
			}
		}
		
		if(isMixed){
			for (int i=0; i < childList.getLength();i++){
				Node child = childList.item(i);
				if((child.getNodeType() == Node.TEXT_NODE) && (child.getNodeValue() != null) && (!child.getNodeValue().replace("\t", "").replace("\n", "").replace(" ", "").equals(""))){
					mixedElementsFactsList.add("xml/elementoMisto("+Integer.toString(idPai)+", " + ++contadorIdPai +  ", '" + child.getNodeValue().replace("'", "´").replace("\t", "").replace("\n", "") + "').\n");
				}
			}
			factsList.addAll(mixedElementsFactsList);
		}
		return factsList;
	}

	public long getTotalTime() {
		return totalTime;
	}

	public void setTotalTime(long totalTime) {
		this.totalTime = totalTime;
	}

	public void setClearData(Boolean checkClearDataSelected) {
		bClearData = checkClearDataSelected;
	}
	
	public void setResetLastId(Boolean checkResetLastId){
		bResetLastId = checkResetLastId;
	}
	public Boolean getClearData() {
		return bClearData;
	}                               

}
