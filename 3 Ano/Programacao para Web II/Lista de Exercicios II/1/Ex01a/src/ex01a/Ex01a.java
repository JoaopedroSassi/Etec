package ex01a;

import javax.swing.JOptionPane;

public class Ex01a {
    public static void main(String[] args) {
        
        double tempo, vel_media, dist, litros;
        
        tempo = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o tempo: "));
        vel_media = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite a Velocidade Média: "));
        
        dist = tempo * vel_media;
        
        litros = dist / 12;
        
        JOptionPane.showMessageDialog(null, "A velcidade média é igual a: " + vel_media + "KM/H, \n" +
               "O tempo gasto foi de: " + tempo + " horas, \n" +
                "A distância percorrida é de: " + dist + " KM, \n" +
                "A quantidade de litros foi de: " + litros + " litros");

        
        
    }
    
}
