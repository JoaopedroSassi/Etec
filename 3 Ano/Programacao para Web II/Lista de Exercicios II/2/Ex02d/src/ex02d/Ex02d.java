package ex02d;

import javax.swing.JOptionPane;


public class Ex02d {


    public static void main(String[] args) {
        int a, b, c;  
        
        a = Integer.parseInt(JOptionPane.showInputDialog(null, "Escreva a primeira número: "));
        b = Integer.parseInt(JOptionPane.showInputDialog(null, "Escreva o segundo número: "));
        c = Integer.parseInt(JOptionPane.showInputDialog(null, "Escreva o terceiro número: "));
        
        if (a > b && a > c ) {
            JOptionPane.showMessageDialog(null, a);
        }
        
    }
    
}
