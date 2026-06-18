import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int valor100=0,valor50=0,valor20=0,valor10=0,valor5=0,valor2=0,opc=0,id=0;
        int[] login={101,102,103,104,105},saldo={7005,295,633,326,457};
        String[] senha={"101","102","103","104","105"},userName={"Bruce","Clark","Peter","Eddie","Mary"};
        boolean invalid=true;//É uma varíavel que define se o While estará ativo
        while(invalid){//Serve para que o programa sempre repita
            while (invalid){//Serve que quanto o usuario não digitar a senha e usuario certo, ele ficará sempre repetindo
                System.out.println("Informe o seu usuario: ");//pergunta o codigo de usuario
                int user = input.nextInt();
                System.out.println("Informe a sua senha: ");//pergunta o senha do usuario
                String request = input.next();
                opc=0;//difine a variavel para zero por causa do caixa
                id=0;//difine a variavel para zero para evitar possível problemas
                for (int i=0 ; i<4; i++){//repete passando pelo todos índices dos vetores
                    if(request.equals(senha[i]) && user==login[i]){//verífica se o codigo e senha estão corretos
                        id=i;//difine a posição do vetor
                        invalid=false;//difine a varíavel para falso para não continuar perguntando usuario e senha
                    }
                }
                if (invalid==true){//Se a varíavel ainda continuar verdadeira signifa que senha e usuario possívelmente estão incorretos
                    System.out.println(" ## SENHA OU USUARIO ESTÃO INCORRETOS ##");//imprime quando os senha ou usuario estão incorretos
                }
            }
            while(opc!=4){//enquanto a Opção = opc não for 4 = sair, o programa continuará a se repitar
                invalid=true;//a variável volta a ser verdadeira caso o usuario saía do caixa, assim tendo que perguntar denovo o usuario e senha denovo, também para deixar o programa sempre ativo
                System.out.println(" ## SEJA-BEM VINDO "+ userName[id].toUpperCase()+ " ## ");//Imprime uma saudação de boas vindas e coloca o nome do usuario e o ".toUpperCase()" serve para deixar o nome de usuario em maíusculo
                System.out.println("======= CAIXA ELETRÔNICO =======\n1 - CONSULTAR SALDO\n2 - SAQUE\n3 - DEPÓSITO\n4 - SAIR\n===============================\nEscolha a opção desejada: ");//imprime a tela do caixa e pergunta a opção do usuario
                opc = input.nextInt();

                switch (opc){
                    case 1:
                        System.out.println(" ## Saldo ( "+userName[id]+" ) , disponível de "+saldo[id]+" ratatouille ## ");
                        break;
                    case 2:
                        System.out.println(" ## INFORME O QUANTO QUER SACAR ## ");
                        int saque = input.nextInt();
                        if (saque>saldo[id]){
                            System.out.println(" ## O SAQUE É DE VALOR MAIS QUE O SALDO ## ");
                        }else if(saque % 10 ==1 || saque % 10 ==7 || saque % 10 == 3) {
                            System.out.println(" ## INFORME OUTRO VALOR, NÃO ACEITAMOS VALOR QUE TERMINAM COM 1,3 OU 7 ## ");
                        }else{
                            System.out.println(" ## NOTAS ENTREGUES ## ");
                            int rest;
                            if (saque>=7005){
                                saque=7005;
                                System.out.println(" ## O LIMITE DE CAIXA É DE 7005 ## ");
                            }
                            rest= saque;
                            saldo[id]=saldo[id]-saque;
                                if(rest>=100){
                                 if (rest>=100 && rest<7005){
                                    valor100= rest/100;
                                }else{
                                    valor100=40;
                                 }
                                rest= rest-valor100*100;
                                System.out.println("*100 ratatouilles : "+valor100);
                                }
                                if (rest>=50){
                                    if (rest>=50 && rest<2000) {
                                        valor50 = rest / 50;
                                    }else{
                                        valor50=40;
                                    }
                                    rest = rest-valor50*50;
                                    System.out.println("*50 ratatouilles : "+valor50);
                                }
                                if (rest>=20){
                                    if (rest>=20 && rest<600){
                                        valor20= rest/20;
                                    }else {
                                        valor20=30;
                                    }
                                    rest= rest-valor20*20;
                                    System.out.println("*20 ratatouilles : "+valor20);
                                }
                                if (rest>=10){
                                    if (rest>=10 && rest<300){
                                        valor10= rest/10;
                                    }else{
                                        valor10=30;
                                    }
                                    rest= rest-valor10*10;
                                    System.out.println("*10 ratatouilles : "+valor10);
                                }
                                if (rest>=5){
                                    if (rest % 5 ==0 && rest<75){
                                        valor5 = rest/5;
                                    }else{
                                        valor5 = 15;
                                    }
                                    rest= rest-valor5*5;
                                    System.out.println("*5 ratatouilles : "+valor5);
                                }
                                if (rest>=2){
                                    if (rest % 2 ==0 && rest<30){
                                        valor2= rest/2;
                                    }else{
                                        valor2=15;
                                    }
                                    rest= rest-valor2*2;
                                    System.out.println("*2 ratatouilles : "+valor2);
                                }
                            System.out.println(" ## O SEU SALDO RESTANTE "+userName[id].toUpperCase()+" É DE : "+saldo[id]+" ## ");
                            }
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