package ex01d;

import javax.swing.JOptionPane;

public class Ex01d {


    public static void main(String[] args) {
        
        double cels, kel;
        
       cels = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite os graus em Celsius: ")); 
       
       kel = cels + 273.15;
     
       
       JOptionPane.showMessageDialog(null, "A temperatura, em Kelvin é: " + kel);
        
    }
    
}