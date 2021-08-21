package exerciciometodos;

import java.util.Scanner;

public class ExercicioMetodos {

    public static void main(String[] args) {
        
        Scanner leitor = new Scanner(System.in);
        System.out.println("Digite 1 - soma");
        System.out.println("Digite 2 - subtração");
        System.out.println("Digite 3 - multiplicação");
        System.out.println("Digite 4 - divisão");
        System.out.println("Digite 5 - potência");
        int opc = leitor.nextInt();
        
        
        
        switch (opc){
            
            case 1:
                somar();
                break;
                
            case 2:
                sub();
                break;
                
            case 3:
                mult();
                break;
                
            case 4:
                div();
                break;
                
            case 5:
               poten();
                break;
                
            default:
                System.out.println("VALOR INVALIDO");
                break;
                                
        }
              
        }
    
        private static void somar(){
        Scanner digita = new Scanner(System.in);
        System.out.println("Digite 1° Número");
        double x = digita.nextInt();
        System.out.println("Digite 2° Número");
        double y = digita.nextInt();
        
        double soma = x + y;
        
        System.out.println("A soma dos números é igual a: " + soma);
        }
        
        //__________________________________________________________//
        
        private static void sub(){
        Scanner digita = new Scanner(System.in);
        System.out.println("Digite 1° Número");
        double x = digita.nextInt();
        System.out.println("Digite 2° Número");
        double y = digita.nextInt();
        
        double menos = x - y;
        
        System.out.println("A subtração dos números é igual a: " + menos);
                   
        }
        
        //__________________________________________________________//
        
        private static void mult(){
        Scanner digita = new Scanner(System.in);
        System.out.println("Digite 1° Número");
        double x = digita.nextInt();
        System.out.println("Digite 2° Número");
        double y = digita.nextInt();
        
        double vezes = x * y;
        
        System.out.println("A multiplicação dos números é igual a: " + vezes);
                   
        }
        
        //__________________________________________________________//
        
        private static void div(){
        Scanner digita = new Scanner(System.in);
        System.out.println("Digite 1° Número");
        double x = digita.nextInt();
        System.out.println("Digite 2° Número");
        double y = digita.nextInt();
        
        double dividido = x / y;
        
        System.out.println("A divisão dos números é igual a: " + dividido);
                   
        }
        
        //__________________________________________________________//
        
        private static void poten(){
        Scanner digita = new Scanner(System.in);
        System.out.println("Digite 1° Número");
        double x = digita.nextInt();
        System.out.println("Digite 2° Número");
        double y = digita.nextInt();
        
        double elevado = Math.pow(x, y);
        
        System.out.println("A subtração dos números é igual a: " + elevado);
                   
        }
    
}
