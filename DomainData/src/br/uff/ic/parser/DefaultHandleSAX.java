/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.uff.ic.parser;
import br.uff.ic.io.FileManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import br.uff.ic.parser.*;
/**
 *
 * @author Rafael Pinheiro
 * Modified by Wellington Moreira de Oliveira in 07/11/2017
 */
public class DefaultHandleSAX extends DefaultHandler {
	
    private static final String PATHCONFIG = "config.txt";
    private String strFato;
    private static int contadorIdPai = 0;
    private Stack<ElementoXML> pilha = new Stack<ElementoXML>();
    private FileManager arquivo;
    private String strConteudo = "";
    private Boolean bResetLastId = false;
    private ElementoXML elementoRaiz = null;
    private Boolean bElementoAberto = false;
    private ElementoXML elementoAtual;
    private ArrayList<String> selectedElements;
    private static int domainRelation = 0;
    private static Boolean firstLine = true;  
    private int key = 0;
    private static int idTuple = 0;
    private static int idField = 0;
    private int previousField = 0; 
    private String wkfEx = null;      
        
    public DefaultHandleSAX(String factsPath, String wkfEx) {        
        super(); 
        arquivo = new FileManager(factsPath);
        contadorIdPai = 0;        
        idTuple++;
        selectedElements = new ArrayList<>();
        selectedElements.add("entry"); //elemento pai de outros elementos importantes. Se não incluir este perde os filhos
        selectedElements.add("description");
        selectedElements.add("keyword");
        selectedElements.add("feature");//elemento pai de outros elementos importantes. Se não incluir este perde os filhos           
        selectedElements.add("taxon");//elemento pai de outros elementos importantes. Se não incluir este perde os filhos           
        selectedElements.add("scientificName"); 
        selectedElements.add("taxId"); 
        selectedElements.add("qualifier");  
        selectedElements.add("name");
        selectedElements.add("value"); 
        //selectedElements.add("lineage");  
        this.wkfEx = wkfEx;
    }
    
    public void setResetLastId(Boolean _bResetLastId){
    	bResetLastId = _bResetLastId;
    }
    
    private void escreverId(Integer contadorId)
    {
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
    
    private Integer obterId(){
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
    
    @Override
    public void startDocument() {
    	if ( bResetLastId )
    	{
    		contadorIdPai = 0;
    	}
    	else
    	{
    		contadorIdPai = obterId();
    	}    	    	
    }

    @Override
    public void endDocument() {
		escreverId(contadorIdPai);
    }
        
    private void processarAtributos(Attributes atts ){
        for( int i = 0; i < atts.getLength(); i++ )
        {
        	ElementoXML novoElemento = new ElementoXML();
        	novoElemento.setTipo(ElementoXML.TipoElemento.ATRIBUTO);
            String atributo = atts.getQName(i);
            if (atributo.contains(":"))
            	atributo = atributo.replace(":", "_");
            
            novoElemento.setNome(atributo);
            
            getElementoAtual().adicionarFilho(novoElemento);
            novoElemento.setPai(getElementoAtual());
            novoElemento.setId(++contadorIdPai);

            ElementoXML conteudo = new ElementoXML();
            conteudo.setId(++contadorIdPai);
            conteudo.setConteudo(atts.getValue(i));
            conteudo.setPai(novoElemento);
            conteudo.setTipo(ElementoXML.TipoElemento.TEXTO);
            
            novoElemento.adicionarFilho(conteudo);
            
            /*
            
            ElementoXML elementoPai = pilha.lastElement();
            //elementoPai.possuiAtributo(true);
            String fatoAtributo = atributo.toLowerCase() + "(" + elementoPai.getId() + ",'";
            fatoAtributo +=  + "').\n";
            System.out.println(fatoAtributo);
            arquivo.writeFacts(fatoAtributo);           */
        }
    }
    
    public String getUltimoElementoPilha(){
    	ElementoXML elementoAtual = (ElementoXML)pilha.lastElement();
    	return elementoAtual.getNome();
    }
    
    public ElementoXML getElementoAtual(){
    	return elementoAtual;
    }
        
    public void apontarPai(){
    	elementoAtual = elementoAtual.getPai();
    }
    
    @Override
    public void startElement (String uri, String localName, String qName, Attributes atts){
    	/*if (qName.equals("ss")){
    		int a =0;
    	}*/
    	ElementoXML novoElemento = new ElementoXML();
    	novoElemento.setTipo(ElementoXML.TipoElemento.FILHO);
    	novoElemento.setNome(qName);
    	novoElemento.setId(++contadorIdPai);
    	if ( pilha.size() == 0){ //elemento Raiz
    		novoElemento.setPai(null);
    		pilha.push(novoElemento);
    		elementoAtual = novoElemento;
    		//Codigo original comentado
                //strConteudo += elementoAtual.getNome().toLowerCase();
	    	//strConteudo += "(" + elementoAtual.getId() + ").\n";
    		return;
    	}
    	else{
    		novoElemento.setPai(getElementoAtual());
    	}    	
    	
    	if ( elementoRaiz == null ){
    		pilha.push(novoElemento);
    		elementoRaiz = novoElemento;
    	}   
    	
    	getElementoAtual().adicionarFilho(novoElemento);
    	elementoAtual = novoElemento;    		
        
        processarAtributos( atts);
    }

    @Override
     public void endElement (String uri, String localName, String qName) throws SAXException {
        //modificado para não pegar xml inválido "Entry" 
    	if ( elementoRaiz != null && elementoRaiz.getNome().equals(qName) && !elementoRaiz.getPai().getFilhos().contains("Entry")){
            //Codigo original comentado
            //strConteudo += elementoRaiz.getNome().toLowerCase();
    	    //strConteudo += "(" + elementoRaiz.getPai().getId() + ", " + elementoRaiz.getId() + ").\n";
            
            //Só imprimi esta primeira linha uma vez
            if(firstLine){
                strConteudo +=      ":- discontiguous(domainRelation/2).\n" +
                                    ":- discontiguous(field/2).\n" +
                                    ":- discontiguous(value/3).\n" +                                    
                                    ":- discontiguous(haskey/2).\n" +
                                    ":- discontiguous(tuple/1).\n" +
                                    ":- discontiguous(haskey/2).\n" +
                                    ":- discontiguous(hasField/2).\n" +
                                    ":- discontiguous(hasTuple/2).\n";

                //domainRelation = elementoRaiz.getPai().getId();
                domainRelation = contadorIdPai;
                strConteudo += "domainRelation("+ domainRelation + ", 'Sequence" + domainRelation +"').\n";
                strConteudo += "used('"+ wkfEx + "', " + domainRelation +").\n";
            }
            firstLine = false;            
            strConteudo += "tuple(" + idTuple + ").\n";
            strConteudo += "hasTuple(" + domainRelation + ", " + idTuple + ").\n";
    	    if ( !elementoRaiz.getConteudo().isEmpty() && elementoRaiz.getFilhos().isEmpty()){
                //Codigo original comentado    	    	
                //strConteudo += elementoRaiz.getNome().toLowerCase();
        	//strConteudo += "(" + elementoRaiz.getId() + ", '" + elementoRaiz.getConteudo().replace("'", "`") + "').\n";
        	elementoRaiz.setElementoImpresso(true);
    	    }
    	    	
            apontarPai();
    	    pilha.pop();
    	    escreverElementoNoArquivo(elementoRaiz);
    	    elementoRaiz = null;
    	    System.out.println(strConteudo);
    	    arquivo.writeFacts(strConteudo);
            strConteudo = "";
    	}
    	else
    	{
    		if ( getElementoAtual().getFilhos().size() == 0 )
    		{
		       ElementoXML novoElemento = new ElementoXML();
		       novoElemento.setTipo(ElementoXML.TipoElemento.TEXTO);
		       novoElemento.setConteudo("");
		       novoElemento.setId(++contadorIdPai);
		       getElementoAtual().adicionarFilho(novoElemento);
		       novoElemento.setPai(getElementoAtual());
    		}
            apontarPai();
    	}
    	//System.out.println(strFato);
        //arquivo.writeFacts(strFato);
    }

    @Override
    public void characters (char[] ch, int start, int length) throws SAXException {
       String conteudo = new String( ch, start, length);
       if ( !possuiLetra(conteudo))
    	   return;
       
       ElementoXML novoElemento = new ElementoXML();
       novoElemento.setTipo(ElementoXML.TipoElemento.TEXTO);
       novoElemento.setConteudo(conteudo);
       novoElemento.setId(++contadorIdPai);
       getElementoAtual().adicionarFilho(novoElemento);
       novoElemento.setPai(getElementoAtual());
       //getElementoAtual().setConteudo(conteudo);
    }
    
    private void escreverElementoNoArquivo(ElementoXML elemento){
    	Boolean bElementoMisto = elemento.ehElementoMisto();
    	ArrayList<ElementoXML> filhos = elemento.getFilhos();
        String nameValue = "";               
        
        //Filtrar por elementos/atributos específicos
        //if(selectedElements.contains(elemento.getNome())){                
        
    	for( int i = 0; i < filhos.size(); i++){
    		/*if ( filhos.get(i).getTipo() == ElementoXML.TipoElemento.FILHO &&
                        !filhos.get(i).naoPossuiElementoTexto())
    		{
                    if ( !filhos.get(i).getElementoImpresso() ){
                        if ( filhos.get(i).getNome().toLowerCase().equals("hw")){
                            int a= 0;
                        }
                        
    			strConteudo += filhos.get(i).getNome().toLowerCase();
    			strConteudo += "(" + filhos.get(i).getPai().getId() + ", " + filhos.get(i).getId() + ").\n";
    			filhos.get(i).setElementoImpresso(true);
                    }
    		}*/
    		
                // Se não é elemento filho nem atributo
                if( ElementoXML.TipoElemento.FILHO != filhos.get(i).getTipo() || ElementoXML.TipoElemento.ATRIBUTO != filhos.get(i).getTipo()){
    			
                    /*if ( bElementoMisto && filhos.get(i).getTipo() == ElementoXML.TipoElemento.TEXTO){
                        // Se é elemento misto e texto ao mesmo tempo
                        if ( !filhos.get(i).getElementoImpresso() ){
                            imprimirPai(filhos.get(i).getPai());
                            strConteudo += "xml/mixedElement";
                            strConteudo += "(" + filhos.get(i).getPai().getId() + ", " + filhos.get(i).getId() + ", '" + filhos.get(i).getConteudo().replace("'", "`") + "').\n";
                            filhos.get(i).setElementoImpresso(true);
                        }
	    		}
	    		else{*/
                            //Se o elemento é só Texto. O elemento Texto será value() e seu Pai que é atributo será field(). 
                            if( filhos.get(i).getTipo() == ElementoXML.TipoElemento.TEXTO ){
		    		if ( filhos.get(i).getPai().getTipo() == ElementoXML.TipoElemento.ATRIBUTO ){
                                    if ( !filhos.get(i).getElementoImpresso() ){
                                        //Código original
                                        //strConteudo += filhos.get(i).getPai().getNome().toLowerCase();
                                        //strConteudo += "(" + filhos.get(i).getPai().getPai().getId() + ", " + filhos.get(i).getPai().getId() + ", '" + filhos.get(i).getConteudo().replace("'", "`") + "').\n";

                                        //Se o atributo for "Name" (pertencente o elemento Qualifier) tem que pegar o seu valor para ser o Field 
                                        nameValue = filhos.get(i).getPai().getNome().toLowerCase();
                                        idField = filhos.get(i).getPai().getId();
                                        if(nameValue.equals("name")){
                                            nameValue = filhos.get(i).getConteudo().replace("'", "`").trim();                                              
                                            //Se o conteúdo for igual a "source" e "CDS" não faz nada
                                            if(!nameValue.equals("source") && !nameValue.equals("CDS")){                                                                                                       
                                                strConteudo += "field(" + idField + "," + nameValue + ").\n";                                                                                                                                         
                                                previousField = idField;
                                            }
                                        }
                                        //Se o atributo não for "Name"(pertencente o elemento Qualifier)
                                        else{ //idValue anterior = filhos.get(i).getId()
                                            strConteudo += "field(" + idField + "," + nameValue + ").\n";                                                                                                
                                            strConteudo += "value(" + idTuple + ", " + idField + ", '" + filhos.get(i).getConteudo().replace("'", "`").trim()  + "').\n";   
                                            //strConteudo += "hasValue(" + idField + "," + filhos.get(i).getId() + ").\n";
                                            //strConteudo += "tuple(" + idTuple + "," + filhos.get(i).getId() + ").\n";
                                            //Se for o primeiro field do primeiro elemento o seu id será a chave
                                            if(key == 0){
                                                key = filhos.get(i).getPai().getId();
                                                strConteudo += "haskey(" + domainRelation + "," + key + ").\n";
                                                //strConteudo += "hasTuple(" + domainRelation + ", " + idTuple + ").\n";
                                            }                                                                                                                                          
                                        }
                                        filhos.get(i).setElementoImpresso(true);
                                    }
                                    }
                                    else{

                                        //imprimirPai(filhos.get(i).getPai().getPai());

                                        //Se o elemento não tiver sido impresso (Se não for Filho, nem Texto, nem Atributo)
                                        if ( !filhos.get(i).getElementoImpresso() ){

                                            //Codigo original
                                            //strConteudo += filhos.get(i).getPai().getNome().toLowerCase();
                                            //strConteudo += "(" + filhos.get(i).getPai().getPai().getId() + ", " + filhos.get(i).getPai().getId() + ", '" + 
                                            //				filhos.get(i).getConteudo().replace("'", "`")  + "').\n";

                                            //Se o elemento for Value do atributo Name (pertencente ao elemento Qualifier) pegar seu conteudo
                                            nameValue = filhos.get(i).getPai().getNome().toLowerCase();                                         
                                            if(nameValue.equals("value")){
                                                nameValue = filhos.get(i).getPai().getConteudo().replace("'", "`").trim(); 
                                                //strConteudo += "value(" + idTuple + ", "  + filhos.get(i).getId() + ",'" + filhos.get(i).getConteudo().replace("'", "`").trim()  + "').\n";
                                                strConteudo += "value(" + idTuple + ", " + idField + ",'" + filhos.get(i).getConteudo().replace("'", "`").trim()  + "').\n";
                                                //strConteudo += "hasValue(" + previousField + "," + filhos.get(i).getId() + ").\n";   
                                                //strConteudo += "tuple(" + idTuple + "," + filhos.get(i).getId() + ").\n";
                                            }
                                            else{   
                                                strConteudo += "field(" + idField + "," + nameValue + ").\n";                                                     
                                                //strConteudo += "value(" + idTuple + ", "  + filhos.get(i).getId() + ",'" + filhos.get(i).getConteudo().replace("'", "`").trim()  + "').\n";
                                                strConteudo += "value(" + idTuple + ", " + idField + ",'" + filhos.get(i).getConteudo().replace("'", "`").trim()  + "').\n";
                                                //strConteudo += "hasValue(" + filhos.get(i).getPai().getId()+ "," + filhos.get(i).getId() + ").\n";
                                                //strConteudo += "tuple(" + idTuple + "," + filhos.get(i).getId() + ").\n";

                                            }                                                                                      
                                            filhos.get(i).setElementoImpresso(true);
                                        }

                                    }
                                    strConteudo += "hasField(" + domainRelation + ", " + idField + ").\n";                                   
		    		}
		    		/*else{
		    			
		    			strConteudo += filhos.get(i).getNome().toLowerCase();
		    				strConteudo += "(" + filhos.get(i).getPai().getId() + ", " + filhos.get(i).getId() + ", '" + filhos.get(i).getConteudo() + "').\n";
		    		}*/
	    		//}
    		}
    		escreverElementoNoArquivo(filhos.get(i));                
            }
    	//}    	
    }
    
    private void imprimirPai(ElementoXML pai){
    	if ( !pai.getElementoImpresso() ){
 	     	strConteudo += pai.getNome().toLowerCase();
	    	strConteudo += "(" + pai.getPai().getId() + ", " + pai.getId() + ").\n";
	    	pai.setElementoImpresso(true);
    	}
    }
    
    private boolean possuiLetra( String s ) {  
    	  
        // cria um array de char  
        char[] c = s.toCharArray();  
        boolean d = false;  
      
        for ( int i = 0; i < c.length; i++ ){  
            // verifica se o char n�o � um d�gito  
            if ( Character.isLetterOrDigit( c[ i ] ) ) {  
                d = true;
            }  
        }        
      
        return d;      
    }
    
    private boolean possuiSomenteEspacoEmBraco(String s){
    	//s.replace("\n", "");
    	s.replace("\t", "");
    	if ( s.indexOf(" ") > - 1)
    		return true;
    	return false;
    }
    
    public void setDomainRelation(int domainRelation){
        this.domainRelation = domainRelation;
    }
    
    public void setWkfEx(String wkfEx){
        this.wkfEx = wkfEx;
    }    
    
}