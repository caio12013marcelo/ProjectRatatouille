programa
{
	
	funcao inicio()
	{
		inteiro saque=0,restante=0,opc=0,deposito=0,valor100=0,valor50=0,valor20=0,valor10=0,valor5=0,valor2=0,numUsuario=0,cod
		inteiro saldo[5]={7005,200,300,400,500},login[5]={101,102,103,104,105}
		cadeia senha[5]= {"101","102","103","104","105"},usuario[5]={"Rodney","Claudney","Edney","vanderley","Sidney"},password
		logico invalid=verdadeiro
		enquanto(invalid){
			enquanto(invalid){
				escreva("Informe o codigo de usuario :")
				leia(cod)
				escreva("Informe a senha :")
				leia(password)
				numUsuario=0
				opc=0
				limpa()
				para(inteiro i=0;i<4;i++){
					se(cod==login[i] e senha[i]==password){
						numUsuario = i
						invalid=falso
					}
				}
				se(invalid==verdadeiro){
					escreva("## SENHA OU USUARIOS ERRADOS ##\n")
				}
			}
			enquanto(opc!=4){
				escreva(" ## SEJA-BEM VINDO, ",usuario[numUsuario]," ##\n")
				invalid=verdadeiro
				escreva("======= CAIXA ELETRÔNICO =======\n1 - CONSULTAR SALDO\n2 - SAQUE\n3 - DEPÓSITO\n4 - SAIR\n===============================\nEscolha a opção desejada: ")
				leia(opc)
				limpa()
			escolha(opc){
				caso 1:
					escreva("o seu saldo ( ",usuario[numUsuario]," ) , é ",saldo[numUsuario]," ratatouille\n")
					pare
				caso 2:
					escreva("informe o valor do saque : ")
					leia(saque)
					se(saque%10 == 1 ou saque%10 == 3 ou saque%10 == 7){
						escreva("invalido, não pode sacar terminando em 1 ou 3 ou 7\n")
					}senao{
					se(saque>saldo[numUsuario]){
						escreva("invalido, não pode colocar um saque terminando em 1 ou 3 ou 7\n")
					}senao{
						saldo[numUsuario]= saldo[numUsuario]-saque
						restante=saque
						se(saque>=7005){
							escreva("limite de caixa é 7005\n")
						}
						escreva("## Usuario : ",usuario[numUsuario]," ##\n NOTAS ENTREGUES\n")
						se(restante>=100){
								se(restante>=100 e restante<=4000){
									valor100= restante/100
								}senao{
									valor100=40
								}
							restante=restante-valor100*100
							escreva("100 Ratatouilles: ",valor100,"\n")
							}
						se(restante>=50){
								se(restante>=50 e restante<=2000){
									valor50=restante/50
								}senao{
									valor50=40
								}
							restante= restante-valor50*50
							escreva("50 Ratatouilles: ",valor50,"\n")
							}
						se(restante>=20){
								se(restante>=20 e restante<=600){
									valor20=restante/20
								}senao{
									valor20=30
								}
							restante= restante-valor20*20
							escreva("20 Ratatouilles: ",valor20,"\n")
							}
						se(restante>=10){
								se(restante>=10 e restante<=300){
									valor10=restante/10
								}senao{
									valor10=30
								}
							restante= restante-valor10*10
							escreva("10 Ratatouilles: ",valor10,"\n")
							}
						se(restante % 5 == 0 e restante>=5){
								se(restante>=5 e restante<=75){
									valor5=restante/5
								}senao{
									valor5=15
								}
							restante= restante-valor5*5
							escreva("5 Ratatouilles: ",valor5,"\n")
							}
						se(restante % 2 == 0 e restante>=2){
							se(restante>=2 e restante <=30){
								valor2=restante/2
							}senao{
								valor2=15
							}
						restante= restante-valor2*2
						escreva("2 Ratatouilles: ",valor2,"\n")
						}
					   }
					}
					pare
				caso 3:
					escreva("Informe o quanto quer depositar : \n")
					leia(deposito)
					saldo[numUsuario]= saldo[numUsuario]+deposito
					pare
				caso 4:
					limpa()
					escreva("Até a proxima\n")
					pare
				caso contrario:
					escreva("opção ínvalida\n")
					pare
			}
		}
	}	
   }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1739; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */