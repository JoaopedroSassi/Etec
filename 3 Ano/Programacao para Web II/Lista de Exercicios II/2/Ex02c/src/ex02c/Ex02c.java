package ex02c;

import javax.swing.JOptionPane;


public class Ex02c {


    public static void main(String[] args) {
        double nota1, nota2, nota3, nota4, med;
        
        
        nota1 = Double.parseDouble(JOptionPane.showInputDialog(null, "Escreva a primeira nota: "));
        nota2 = Double.parseDouble(JOptionPane.showInputDialog(null, "Escreva a segunda nota: "));
        nota3 = Double.parseDouble(JOptionPane.showInputDialog(null, "Escreva a terceira nota: "));
        nota4 = Double.parseDouble(JOptionPane.showInputDialog(null, "Escreva a quarta nota: "));
        
        med = nota1 + nota2 + nota3 + nota4 / 4;
        
        
        if (med>=5) {
            JOptionPane.showMessageDialog(null, "Aluno Aprovado!!!");
        } else {
             JOptionPane.showMessageDialog(null, "Aluno Reprovado");
        }
    }
    
}
