package ex02b;

import javax.swing.JOptionPane;


public class Ex02b {


    public static void main(String[] args) {
      int x, resul;
      
      x = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o Número: "));
      
      if (x < 0) {
          resul = x * (-1);
           JOptionPane.showMessageDialog(null, resul);
      }
      else {
          resul = x;
           JOptionPane.showMessageDialog(null, resul);
      }
      
         
    }
    
}
