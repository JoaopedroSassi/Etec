package ex01h;

import javax.swing.JOptionPane;


public class Ex01h {


    public static void main(String[] args) {
       
       double vol, raio, alt;
        
       raio = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o raio: ")); 
       alt = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite a Altura: ")); 
       
       vol = 3.141592653589793 * (raio * raio) * alt;
     
       
       JOptionPane.showMessageDialog(null, "O volume do Galão é de: " + vol);
       
    }
    
}
