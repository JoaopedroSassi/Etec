package ex01;

import java.util.Random;
import javax.swing.JOptionPane;


public class EX01 {


    public static void main(String[] args) {
        int val1, val2;
        
        val1 = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o número: ")); 
        
        
        if (val1 < 0 && val1 > 10) {
            JOptionPane.showMessageDialog(null, "Você escreveu um núemro que não está entre 0 e 10" );
        } else {
          Random s = new Random();
          val2 = s.nextInt(11);
          
          if (val1 == val2){
              JOptionPane.showMessageDialog(null, "Parabéns, você acertou o númeor sorteado, que foi " + val2);
          } else{
              JOptionPane.showMessageDialog(null, "Você errou o número sorteado, que foi " + val2);
          }
        }
    }
    
}
