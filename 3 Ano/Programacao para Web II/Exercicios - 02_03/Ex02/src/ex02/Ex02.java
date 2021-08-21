package ex02;

import java.util.Random;
import javax.swing.JOptionPane;

public class Ex02 {


    public static void main(String[] args) {
        int val1, val2, acert = 0, erro = 0;
        
        for (int cont = 0; cont < 5; cont++) {
            Random s = new Random();
            val1 = s.nextInt(11);
            
            val2 = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o número: "));
            
            if (val2 == val1){
                JOptionPane.showMessageDialog(null, "Você acertou, o número sorteado foi: " + val1);
                acert++;
            } else {
                JOptionPane.showMessageDialog(null, "Você errou, o número sorteado foi: " + val1);
                erro++;
            }           
        }
            JOptionPane.showMessageDialog(null, "Você acertou " + acert + " números");
            JOptionPane.showMessageDialog(null, "Você errou " + erro + " números");
    }
    
}
