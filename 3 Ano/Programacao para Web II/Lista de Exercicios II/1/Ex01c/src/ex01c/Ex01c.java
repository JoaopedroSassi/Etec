package ex01c;

import javax.swing.JOptionPane;

public class Ex01c {


    public static void main(String[] args) {
        
        double cels, far;
        
       far = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite os graus em Fahrenheit: ")); 
       
       cels = ((far-32) * 5) / 9;
     
       
       JOptionPane.showMessageDialog(null, "A temperatura, em Fahrenheit: " + cels);
        
    }
    
}