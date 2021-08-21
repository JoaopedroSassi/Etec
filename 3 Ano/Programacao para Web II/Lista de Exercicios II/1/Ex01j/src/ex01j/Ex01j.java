package ex01j;

import javax.swing.JOptionPane;


public class Ex01j {

  
    public static void main(String[] args) {
       
        int a, b, aux;
        
        a = 10;
        b = 5;
        aux =0;
        JOptionPane.showMessageDialog(null, "Valor de a: " + a);
        JOptionPane.showMessageDialog(null, "Valor de b: " + b);
        JOptionPane.showMessageDialog(null, "Valor de aux: " + aux);
        JOptionPane.showMessageDialog(null, "-----------------------");
        
        aux = a;
        a = b;
        b = aux;
        aux = 0;
        JOptionPane.showMessageDialog(null, "Valor de a: " + a);
        JOptionPane.showMessageDialog(null, "Valor de b: " + b);
        JOptionPane.showMessageDialog(null, "Valor de aux: " + aux);
        JOptionPane.showMessageDialog(null, "-----------------------");
        
       
                
    }
    
}
