package exercicio3;

import java.util.Scanner;

public class Exercicio3 {

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
                System.out.println("A soma dos números é igual a: " + somar (x, y));
                break;
                
            case 2:
                System.out.println("A subtração dos números é igual a: " + sub (x, y));
                break;
                
            case 3:
               System.out.println("A multiplicação dos números é igual a: " + mult (x, y));
                break;
                
            case 4:
                System.out.println("A divisão dos números é igual a: " + div(x, y));
                break;
                
            case 5:             
               System.out.println("A subtração dos números é igual a: " + poten(x, y));
                break;
                
            default:
                System.out.println("VALOR INVALIDO");
                break;
                                
        }
              
        }
    
        private static double somar(double num1, double num2){
        
        double somando = num1 + num2;         
        return(somando);
        
   
        }
        
        //__________________________________________________________//
        
        private static double sub(double num1, double num2){

        
        double menos = num1 - num2;
        return (menos);
        
        
                   
        }
        
        //__________________________________________________________//
        
        private static double mult(double num1, double num2){

        
        double vezes = num1 * num2;
        return(vezes);
         
                   
        }
        
        //__________________________________________________________//
        
        private static double div(double num1, double num2){

        
        double dividido = num1 / num2;
        return(dividido);
        
        
                   
        }
        
        //__________________________________________________________//
        
        private static double poten(double num1, double num2){

        
        double elevado = Math.pow(num1, num2);
        return(elevado);
        
        
                   
        }


    
}
