import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int valor100=0,valor50=0,valor20=0,valor10=0,valor5=0,valor2=0,opc=0,id=0;
        int[] login={101,102,103,104,105},saldo={7005,205,600,300,450};
        String[] senha={"101","102","103","104","105"},userName={"Bruce","Clark","Peter","Eddie","Mary"};
        boolean invalid=true;
        while(invalid){
            while (invalid){
                System.out.println("Informe o seu usuario: ");
                int user = input.nextInt();
                System.out.println("Informe a sua senha: ");
                String request = input.next();
                opc=0;
                id=0;
                for (int i=0 ; i<4; i++){
                    if(request.equals(senha[i]) && user==login[i]){
                        id=i;
                        invalid=false;
                    }
                }
                if (invalid==true){
                    System.out.println(" ## SENHA OU USUARIO ESTÃO INCORRETOS ##");
                }
            }
            while(opc!=4){
                invalid=true;
                System.out.println(" ## SEJA-BEM VINDO "+ userName[id]+ " ## ");
                System.out.println("======= CAIXA ELETRÔNICO =======\n1 - CONSULTAR SALDO\n2 - SAQUE\n3 - DEPÓSITO\n4 - SAIR\n===============================\nEscolha a opção desejada: ");
                opc = input.nextInt();

                switch (opc){
                    case 1:
                        System.out.println(" ## Saldo ( "+userName[id]+" ) , disponível de "+saldo[id]+" ratatouille ## ");
                        break;
                    case 2:
                        //take a breath
                        break;
                    case 3:
                        System.out.println(" ## INFORME O QUANTO QUER DEPOSITAR ## ");
                        int deposito = input.nextInt();
                        saldo[id]= saldo[id]+deposito;
                        break;
                    case 4:
                        System.out.println(" ## ATÉ A PRÓXIMA ##");
                        break;
                    default:
                        System.out.println(" ## ERRO ##");
                        break;
                }
            }
        }


        input.close();
    }
}