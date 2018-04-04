/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.main;

import java.util.Hashtable;
import java.util.Map;
import org.jpl7.Query;
import org.jpl7.Term;

/**
 *
 * @author nwm26
 */
public class Blocos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String t1 = "consult('blocos.pl')";
        Query q1 = new Query(t1);
        System.out.println(t1 + " " + (q1.hasSolution() ? "correto" : "falha"));
        String t2 = "encima_de(a,b)";
        Query q2 = new Query(t2);
        System.out.println(t2 + " is " + (q2.hasSolution() ? "correct" : "wrong"));
        String t3 = "mais_acima_de(X,Y)";
        
        Query q3 = new Query(t3);
        System.out.println("Solution for t3 " + q3);          
        while(q3.hasMoreSolutions()) {
            Map<String, Term> s3 = q3.nextSolution();
            System.out.println("X = " + s3.get("X") + ", Y = " + s3.get("Y"));
        }
         System.out.println(System.getProperty("java.library.path")) ;
    }
    
}
