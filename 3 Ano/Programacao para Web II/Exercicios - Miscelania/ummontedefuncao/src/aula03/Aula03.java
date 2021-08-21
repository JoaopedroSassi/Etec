package aula03;

import java.time.*;

public class Aula03 {

    public static void main(String[] args) {
        
        double base,expoente,result;
        
        base=2;
        expoente=3;
        
        result = Math.pow(base, expoente);
        
        System.out.println(result);
        
        
        
        
        System.out.println(Math.pow(2, 3));
        System.out.println(Math.sqrt(9));
        
        
            
        
        String texto = "ETEC MCM";
        System.out.println(texto.charAt(3));
        
        
        String t1 = "ABC";
        String t2 = "abc";
        
        if (t1.equals(t2)) {
            System.out.println("SÃO IGUAIS");
        }
        else{
            System.out.println("SÃO DIFERENTES");
        }
        
        
        
        
        
        
        
        //TAMANHO DA CADEIA DE CARACTERES
        String palavra = "Teste de tamanho";
        int tamanho = palavra.length();
        System.out.println("O tamanho do texto é: " + tamanho);
        
        
        //OBTER UMA PARTE DA STRING
        String parte = "PROFESSOR";
        System.out.println(parte.substring(0, 4)); //PROF
        
        //MAIUSCULA - MINUSCULA
        String outra = "Etec Mcm";
        System.out.println(outra.toLowerCase());
        System.out.println(outra.toUpperCase());
        
        //DATA E HORA
        LocalDate DATAS = LocalDate.now(); //Data do sistema
        DayOfWeek dds = DATAS.getDayOfWeek(); //Dia da semana
        int ddm = DATAS.getDayOfMonth(); //Dia do mês
        Month mes = DATAS.getMonth(); //Mês do ano
        int ndm = DATAS.getMonthValue(); //Número do mês
        int ano = DATAS.getYear(); //Ano
        int nda = DATAS.getDayOfYear(); //Número de dias do ano
        
        System.out.println("Data do sistema: "+ DATAS);
        System.out.println("Dia da semana: "+dds);
        System.out.println("Dia do mês: "+ddm);
        System.out.println("Mês do ano: "+mes);
        System.out.println("Número do mês: "+ndm);
        System.out.println("Ano: "+ano);
        System.out.println("Número de dias do ano: "+nda);
        
        
        LocalTime HORA = LocalTime.now();
        int hor = HORA.getHour();
        int min = HORA.getMinute();
        int seg = HORA.getSecond();
        
        System.out.println("Hora: "+hor);
        System.out.println("Minutos: "+min);
        System.out.println("Segundos: "+seg);
       
    }
    
}
