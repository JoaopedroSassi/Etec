package ex01e;

import javax.swing.JOptionPane;

public class Ex01e {


    public static void main(String[] args) {
        
        double cels, kel;
        
       kel = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite os graus em Kelvin: ")); 
       
       cels = kel - 273.15;
     
       
       JOptionPane.showMessageDialog(null, "A temperatura, em Celsius é: " + cels);
        
    }
    
}