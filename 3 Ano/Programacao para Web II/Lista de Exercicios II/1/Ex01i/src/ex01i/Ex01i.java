package ex01i;

import javax.swing.JOptionPane;


public class Ex01i {


    public static void main(String[] args) {
       
       double peso, raio, densi;
        
       raio = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o raio: ")); 
       densi = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite a Densidade: ")); 
       
       peso = densi * 4 * 3.141592653589793 * (raio * raio * raio) / 3;
     
       
       JOptionPane.showMessageDialog(null, "O volume do Galão é de: " + peso);
       
    }
    
}
