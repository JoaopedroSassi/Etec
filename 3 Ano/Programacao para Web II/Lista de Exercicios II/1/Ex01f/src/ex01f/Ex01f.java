package ex01f;

import javax.swing.JOptionPane;


public class Ex01f {


    public static void main(String[] args) {
       
       double far, kel;
        
       far = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite os graus em Fahrenheit: ")); 
       
       kel = (far - 32) * 5 / 9 + 273.15;
     
       
       JOptionPane.showMessageDialog(null, "A temperatura, em Kelvin é: " + kel);
       
    }
    
}
