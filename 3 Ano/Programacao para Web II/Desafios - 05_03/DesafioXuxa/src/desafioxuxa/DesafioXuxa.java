package desafioxuxa;

import java.util.Scanner;
import javax.swing.JOptionPane;


public class DesafioXuxa {


    public static void main(String[] args) {
        int n, cont2;
        
        Scanner s = new Scanner(System.in);
        
        n = Integer.parseInt(JOptionPane.showInputDialog("Escreva quantos patinhos foram passear!"));

        
        
        for (int cont = n; cont >0; cont--) {
            System.out.println(cont + " patinhos foram passear\n" +
                                "Além das montanhas\n" +
                                "Para brincar\n" +
                                "A mamãe gritou: Quá, quá, quá, quá\n" +
                                "Mas só " + (cont-1) + " patinhos voltaram de lá.\n" +
                                "___________________________________________________");
        }
        
        for (cont2 = 1; cont2 <= n; cont2++) {
            System.out.println("A mamãe patinha foi procurar\n" +
                                "Além das montanhas\n" +
                                "Na beira do mar\n" +
                                "A mamãe gritou: Quá, quá, quá, quá\n" +
                                "E os " + (cont2) + " patinhos voltaram de lá.\n" +
                                "___________________________________________________");
        }
  
        
    }
    
}
