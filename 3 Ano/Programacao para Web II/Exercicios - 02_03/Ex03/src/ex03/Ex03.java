
package ex03;

import java.text.DecimalFormat;
import java.util.Random;


public class Ex03 {


    public static void main(String[] args) {
       int conc, dezen;
       
                 
       
        for (int cont = 1; cont <= 10; cont++) {
             System.out.println("Concurso " + cont + ":");
            for (int cont2 = 0; cont2 < 6; cont2++) {
            Random s = new Random();
            dezen = s.nextInt(60); 
            System.out.println(dezen);
            }
            System.out.println("-----------------------");
        }
    }
    
}
