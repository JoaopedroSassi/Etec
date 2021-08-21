package ex01g;

import javax.swing.JOptionPane;


public class Ex01g {


    public static void main(String[] args) {
       
       double far, kel;
        
       kel = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite os graus em Kelvin: ")); 
       
       far = (9 *(kel - 273.15) + 160) / 5;
     
       
       JOptionPane.showMessageDialog(null, "A temperatura, em Fahrenheit é: " + far);
       
    }
    
}
