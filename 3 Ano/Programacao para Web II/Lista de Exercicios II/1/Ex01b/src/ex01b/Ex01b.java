package ex01b;

import javax.swing.JOptionPane;

public class Ex01b {


    public static void main(String[] args) {
        
        double cels, far;
        
       cels = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite os graus em Celsius: ")); 
       
       far = (9 * cels + 160) / 5;
     
       
       JOptionPane.showMessageDialog(null, "A temperatura, em Fahrenheit: " + far);
        
    }
    
}
