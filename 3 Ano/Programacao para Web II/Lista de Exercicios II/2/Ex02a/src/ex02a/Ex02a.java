package ex02a;

import javax.swing.JOptionPane;


public class Ex02a {


    public static void main(String[] args) {
       int a = 0, b = 0, resul = 0;
       
       a = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o Primeiro número: ")); 
       b = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o Segundo número: ")); 
       
       if (a > b) {
        resul = a-b;
       }
       
       if (b > a) {
        resul =  b-a;
       }
       

       JOptionPane.showMessageDialog(null, "A diferença entre eles é: " + resul);
       
       
       
        
    }
    
}
    

