package exerciciometodosnovo;

import java.util.Scanner;

public class ExercicioMetodosNovo {

    public static void main(String[] args) {
        
        Scanner digita = new Scanner(System.in);
        System.out.println("Digite 1° Número");
        double x = digita.nextInt();
        System.out.println("Digite 2° Número");
        double y = digita.nextInt();
        
        Scanner leitor = new Scanner(System.in);
        System.out.println("Digite 1 - soma");
        System.out.println("Digite 2 - subtração");
        System.out.println("Digite 3 - multiplicação");
        System.out.println("Digite 4 - divisão");
        System.out.println("Digite 5 - potência");
        int opc = leitor.nextInt();
        
        
        
        switch (opc){
            
            case 1:
                somar(x, y);
                break;
                
            case 2:
                sub(x, y);
                break;
                
            case 3:
                mult(x, y);
                break;
                
            case 4:
                div(x, y);
                break;
                
            case 5:
               poten(x, y);
                break;
                
            default:
                System.out.println("VALOR INVALIDO");
                break;
                                
        }
              
        }
    
        private static void somar(double num1, double num2){
        
        double soma = num1 + num2;
        
        System.out.println("A soma dos números é igual a: " + soma);
        }
        
        //__________________________________________________________//
        
        private static void sub(double num1, double num2){

        
        double menos = num1 - num2;
        
        System.out.println("A subtração dos números é igual a: " + menos);
                   
        }
        
        //__________________________________________________________//
        
        private static void mult(double num1, double num2){

        
        double vezes = num1 * num2;
        
        System.out.println("A multiplicação dos números é igual a: " + vezes);
                   
        }
        
        //__________________________________________________________//
        
        private static void div(double num1, double num2){

        
        double dividido = num1 / num2;
        
        System.out.println("A divisão dos números é igual a: " + dividido);
                   
        }
        
        //__________________________________________________________//
        
        private static void poten(double num1, double num2){

        
        double elevado = Math.pow(num1, num2);
        
        System.out.println("A subtração dos números é igual a: " + elevado);
                   
        }


    
}
