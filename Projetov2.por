programa
{
	
	funcao inicio()
	{	//saque	restoNotas! opcao deposito   numero usuario codigo
		inteiro saque=0,restante=0,opc=0,deposito=0,valor100=0,valor50=0,valor20=0,valor10=0,valor5=0,valor2=0,numUsuario=0,cod
		//Limite de caixa
		//limite em notas
		inteiro notas100=40,notas50=40,notas20=30,notas10=30,notas5=15,notas2=15
		//limite total
		inteiro notasTotal=0
		//saldo:sao os valores que cada usuario tem (Rodney=7005,edney=300...) login:é uma forma de identificar o usuario (101=Rodney,103=edney...)
		inteiro saldo[5]={7005,200,300,400,500},login[5]={101,102,103,104,105}
		//senha:é o um codigo de seguranca que cada usuario tem para acessar sua conta (Rodney=101) //usuario:é a pessoa que irá acessar sua propria conta
		cadeia senha[5]= {"101","102","103","104","105"},usuario[5]={"Rodney","Claudney","Edney","vanderley","Sidney"},password
		
		logico invalid=verdadeiro//serve para definir quando o enquanto estara ativo
		
		enquanto(invalid){//repete programa
			enquanto(invalid){//
				escreva(" ## Informe o codigo de usuario :")
				leia(cod)
				escreva(" ## Informe a senha :")
				leia(password)
				numUsuario=0
				opc=0
				limpa()
				para(inteiro i=0;i<5;i++){
					se(cod==login[i] e senha[i]==password){
						numUsuario = i
						invalid=falso
					}
				}
				se(invalid==verdadeiro){
					escreva(" ## SENHA OU USUARIOS ERRADOS ## \n")
				}
			}
			enquanto(opc!=4){
				notasTotal=(notas100*100)+(notas50*50)+(notas20*20)+(notas10*10)+(notas5*5)+(notas2*2)
				escreva(" ## SEJA-BEM VINDO, ",usuario[numUsuario]," ##\n")
				invalid=verdadeiro
				escreva("======= CAIXA ELETRÔNICO =======\n1 - CONSULTAR SALDO\n2 - SAQUE\n3 - DEPÓSITO\n4 - SAIR\n===============================\nEscolha a opção desejada: ")
				leia(opc)
				limpa()
			escolha(opc){
				caso 1:
					escreva(" ## Saldo de ( ",usuario[numUsuario]," ) , disponível de ",saldo[numUsuario]," ratatouille ##\n")
					pare
				caso 2:
					escreva(" ## Informe o valor do saque : ")
					leia(saque)
					se(saque == 1){
						escreva(" ## Invalido, não pode sacar 1 de ratatouille## \n")
					}senao{
					se(saque>saldo[numUsuario]){
						escreva(" ## Você não possue dinheiro para sacar esse valor ## \n")
					}senao{
						se(saque>=notasTotal){
							escreva(" ## Limite de caixa é ",notasTotal," ## \n")
							saque=notasTotal
						}
						se(saque%10==3 ou saque%10==1 ){
							escreva(" ## ALERTA : Saques terminados em 3 ou 1 terão desconto de -1 ratatouille  ## \n")
							saque=saque-1
						}
						saldo[numUsuario]= saldo[numUsuario]-saque
						restante=saque
						escreva(" ## Usuario : ",usuario[numUsuario]," ##\n=== NOTAS ENTREGUES ===\n")
						
						se(restante>=100 e notas100>0){
								se(restante>=100 e restante<=notas100*100){
									valor100= restante/100
								}senao{
									valor100= notas100
								}
							restante=restante-valor100*100
							escreva(" * 100 Ratatouilles: ",valor100,"\n")
								
							}
						se(restante>=50){
								se(restante>=50 e restante<=notas50*50){
									valor50=restante/50
								}senao{
									valor50= notas50
								}
							restante= restante-valor50*50
							escreva(" * 50 Ratatouilles: ",valor50,"\n")
							}
						se(restante>=20){
								se(restante>=20 e restante<=notas20*20){
									valor20=restante/20
								}senao{
									valor20= notas20
								}
							restante= restante-valor20*20
							escreva(" * 20 Ratatouilles: ",valor20,"\n")
							}
						se(restante>=10){
								se(restante>=10 e restante<=notas10*10){
									valor10=restante/10
								}senao{
									valor10= notas10
								}
							restante= restante-valor10*10
							escreva(" * 10 Ratatouilles: ",valor10,"\n")
							}
						se(restante % 5 == 0 e restante>=5){
								se(restante>=5 e restante<=notas5*5){
									valor5=restante/5
								}senao{
									valor5= notas5
								}
							restante= restante-valor5*5
							escreva(" * 5 Ratatouilles: ",valor5,"\n")
							}
						se(restante % 2 == 0 e restante>=2 ou restante==3){
							se(restante>=2 e restante<=notas2*2){
								valor2=restante/2
							}senao{
								valor2= notas2
							}
						restante= restante-valor2*2
						escreva(" * 2 Ratatouilles: ",valor2,"\n")
						}
						se(restante==7 ou restante==9){
							se(restante==7){
								restante= restante-7
								valor5=1
								valor2=1
							}senao se(restante==9){
								restante= restante-9
								valor5=1
								valor2=2
							}
							escreva(" * 5 Ratatouilles: ",valor5,"\n")
							escreva(" * 2 Ratatouilles: ",valor2,"\n")
						}
					   
					  	 notas100=notas100-valor100
					  	 notas50=notas50-valor50
					  	 notas20=notas20-valor20
					  	 notas10=notas10-valor10
					  	 notas5=notas5-valor5
					  	 notas2=notas2-valor2
					  	 escreva(" ## Valor do saque foi de ",saque," saldo restante : ",saldo[numUsuario]," ## \n")
						}
					}
					pare
				caso 3:
					escreva(" ## Informe o quanto quer depositar : \n")
					leia(deposito)
					saldo[numUsuario]= saldo[numUsuario]+deposito
					escreva("## Saldo disponível : ",saldo[numUsuario]," ## \n")
					valor100=0
					valor50=0
					valor20=0
					valor10=0
					valor5=0
					valor2=0
					se(deposito>=100){
							se(deposito>=100){
								valor100= deposito/100
							}
						deposito=deposito-valor100*100
						}
						se(deposito>=50){
								se(deposito>=50){
									valor50=deposito/50
								}
							deposito= deposito-valor50*50
							}
						se(deposito>=20){
								se(deposito>=20){
									valor20=deposito/20
								}
							deposito= deposito-valor20*20
							
							}
						se(deposito>=10){
								se(deposito>=10){
									valor10=deposito/10
								}
							deposito= deposito-valor10*10
							}
						se(deposito % 5 == 0 e deposito>=5){
								se(deposito>=5){
									valor5=deposito/5
								}
							deposito= deposito-valor5*5
							
							}
						se(deposito % 2 == 0 e deposito>=2){
							se(deposito>=2){
								valor2=deposito/2
							}
						deposito= deposito-deposito*2
						}
						se(deposito==7 ou deposito==9){
							se(deposito==7){
								deposito= deposito-7
								valor5=1
								valor2=1
							}senao se(deposito==9){
								deposito= deposito-9
								valor5=1
								valor2=2
							}
						}
					   notas100=notas100+valor100
					   notas50=notas50+valor50
					   notas20=notas20+valor20
					   notas10=notas10+valor10
					   notas5=notas5+valor5
					   notas2=notas2+valor2
					pare
				caso 4:
					limpa()
					escreva(" ## Até a proxima ## \n")
					pare
				caso contrario:
					escreva(" ## opção ínvalida ## \n")
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
 * @POSICAO-CURSOR = 2709; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */