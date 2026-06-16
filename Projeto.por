programa
{
	
	funcao inicio()
	{
		inteiro saque=0,restante=0,opc=0,deposito=0,valor100=0,valor50=0,valor20=0,valor10=0,valor5=0,valor2=0,numUsuario=0,cod
		inteiro saldo[5]={100,200,300,400,500},login[5]={101,102,103,104,105}
		cadeia senha[5]= {"101","102","103","104","105"},usuario[5]={"Rodney","Claudney","Edney","vanderley","Sidney"},password
		logico invalid=verdadeiro
		enquanto(invalid){
			escreva("Informe o codigo de usuario :")
			leia(cod)
			escreva("Informe a senha :")
			leia(password)
			numUsuario=0
			opc=0
			para(inteiro i=0;i<4;i++){
				se(cod==login[i] e senha[i]==password){
					numUsuario = i
					invalid=falso
				}
			}
			se(invalid==verdadeiro){
				escreva("informe novamente los codigos and the password\n")
			}
			enquanto(opc!=4){
			invalid=verdadeiro
			escreva("======= Caixa Eletrônico =======\n1 - Consultar Saldo\n2 - Realizar Saque\n3 - Realizar Depósito\n4 - Sair\n===============================\nEscolha a opção desejada: ")
			leia(opc)
			escolha(opc){
				caso 1:
					escreva("o seu saldo é ",saldo[numUsuario]," ratatouille\n")
					pare
				caso 2:
					escreva("informe o valor do saque : ")
					leia(saque)
					se(saque>saldo[numUsuario]){
						escreva("Ínvalido")
					}senao{
						saldo[numUsuario]= saldo[numUsuario]-saque
						restante=saque
						escreva("Usuario: ",usuario[numUsuario],"\n NOTAS ENTREGUES\n")
						se(restante>=100){
							para(inteiro i=0;i<40;i++){
								se(restante>=100){
									valor100=restante/100
									restante= restante-valor100*100
									escreva("100 Ratatouilles: ",valor100,"\n")
								}
							}
						}
						se(restante>=50){
							para(inteiro i=0;i<40;i++){
								se(restante>=50){
									valor50=restante/50
									restante= restante-valor50*50
									escreva("50 Ratatouilles: ",valor50,"\n")
								}
							}
						}
						se(restante>=20){
							para(inteiro i=0;i<30;i++){
								se(restante>=20){
									valor20=restante/20
									restante= restante-valor20*20
									escreva("20 Ratatouilles: ",valor20,"\n")
								}
							}
						}
						se(restante>=10){
							para(inteiro i=0;i<30;i++){
								se(restante>=10){
									valor10=restante/20
									restante= restante-valor10*10
									escreva("10 Ratatouilles: ",valor10,"\n")
								}
							}
						}
						se(restante % 2 ==0){
							para(inteiro i=0;i<15;i++){
								se(restante>=2){
									valor2=restante/2
									restante= restante-valor2*2
									escreva("2 Ratatouilles: ",valor2,"\n")
								}
							}
						}
						se(restante % 5 ==0){
							para(inteiro i=0;i<15;i++){
								se(restante>=5){
									valor5=restante/5
									restante= restante-valor5*5
									escreva("5 Ratatouilles: ",valor5,"\n")
								}
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
 * @POSICAO-CURSOR = 529; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {saque, 6, 10, 5}-{restante, 6, 18, 8}-{opc, 6, 29, 3}-{deposito, 6, 35, 8}-{valor100, 6, 46, 8}-{valor50, 6, 57, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */