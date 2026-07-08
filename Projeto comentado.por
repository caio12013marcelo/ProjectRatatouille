programa
{
	
	funcao inicio()
	{
		//(saque)-(resto do saque)-(opcoes)-(opc3)-(informacoes do usuario)-(codigo digitado pelo usuario) 	 
		inteiro saque=0,restante=0,opc=0,deposito=0,numUsuario=0
		//notas 
		inteiro valor100=0,valor50=0,valor20=0,valor10=0,valor5=0,valor2=0

		//## Informações em relação ao usuário
		
		//vetores
		cadeia usuario[5]={"Rodney","Claudney","Edney","vanderley","Sidney"}//usuario ( o nome de cada usuario )
		cadeia senha[5]= {"101","102","103","104","105"}//senha ( codigo de segurança de cada usuario )
		inteiro login[5]={101,102,103,104,105} // login(informacao do usuario)
		inteiro saldo[5]={7005,200,300,400,500} //saldo ( Saldos armazenados de cada usuario )
		
		//informacoes entregues pelo usuario
		inteiro cod=0
		cadeia password
		
		logico invalid=verdadeiro//uma variavel usada no enquanto para fazer um loop
		
		enquanto(invalid){//faz com que entre em loop
			enquanto(invalid){//rodará até entrar no (para),onde o invalid se tornará falso e nao nao conseguirá mais fazer o loop 
				
				//informeacoes entregues pelo usuario
				escreva(" ## Informe o codigo de usuario :")
				leia(cod)
				escreva(" ## Informe a senha :")
				leia(password)
				numUsuario=0//zerar o usuario lozalizado 
				opc=0//zera por que se digitar a opcao 4 (sair),sempre que entrasse na tela inicial,pularia para sair pois a opcao nao foi zerada
				limpa()//limpa
			
				para(inteiro i=0;i<5;i++){//rodar todos o numeros dos vetores (login) e (senha) para sincroniza-los 
					//se o numero que o usuario digitou na variavel (cod) digitou for igual a algum numero dentro o vetor (login)
					//se o numero que o usuario digitou na variavel (password) digitou for igual a algum numero dentro o vetor (login)
					se(cod==login[i] e senha[i]==password){
						numUsuario = i//localizar o usuario
						invalid=falso//parar o loop e nao entrsr no se(invalid==verdadeiro)
					}
				}
				se(invalid==verdadeiro){
					escreva(" ## SENHA OU USUARIOS ERRADOS ## \n")
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
					escreva(" ## Saldo de ( ",usuario[numUsuario]," ) , disponível de ",saldo[numUsuario]," ratatouille ##\n")
					pare
				caso 2:
					escreva(" ## Informe o valor do saque : ")
					leia(saque)
					se(saque<=0){
						escreva(" ## Não é possível realizar depósito neste valor ##\n")
					}senao{
					se(saque == 1){
						escreva(" ## Invalido, não pode sacar 1 de ratatouille## \n")
					}senao{
					se(saque>saldo[numUsuario]){
						escreva(" ## Você não possue dinheiro para sacar esse valor ## \n")
					}senao{
						se(saque>=7005){
							saldo[numUsuario]= saldo[numUsuario]-7005
							escreva(" ## Limite de caixa é 7005 ## \n")
							saque=7005
						}senao{
							saldo[numUsuario]= saldo[numUsuario]-saque
						}se(saque%10==3 ou saque%10==1){
							escreva(" ## ALERTA : Saques terminados em 3 ou 1 terão desconto de -1 ratatouille  ## \n")
							saque=saque-1
						}
						restante=saque
						escreva(" ## Usuario : ",usuario[numUsuario]," ##\n=== NOTAS ENTREGUES ===\n")
						
						se(restante>=100){
								se(restante>=100 e restante<=4000){
									valor100= restante/100
								}senao{
									valor100=40
								}
							restante=restante-valor100*100
							escreva(" * 100 Ratatouilles: ",valor100,"\n")
							}
						se(restante>=50){
								se(restante>=50 e restante<=2000){
									valor50=restante/50
								}senao{
									valor50=40
								}
							restante= restante-valor50*50
							escreva(" * 50 Ratatouilles: ",valor50,"\n")
							}
						se(restante>=20){
								se(restante>=20 e restante<=600){
									valor20=restante/20
								}senao{
									valor20=30
								}
							restante= restante-valor20*20
							escreva(" * 20 Ratatouilles: ",valor20,"\n")
							}
						se(restante>=10){
								se(restante>=10 e restante<=300){
									valor10=restante/10
								}senao{
									valor10=30
								}
							restante= restante-valor10*10
							escreva(" * 10 Ratatouilles: ",valor10,"\n")
							}
						se(restante % 5 == 0 e restante>=5){
								se(restante>=5 e restante<=75){
									valor5=restante/5
								}senao{
									valor5=15
								}
							restante= restante-valor5*5
							escreva(" * 5 Ratatouilles: ",valor5,"\n")
							}
						se(restante % 2 == 0 e restante>=2 ou restante==3){
							se(restante>=2 e restante <=30){
								valor2=restante/2
							}senao{
								valor2=15
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
					   }
					  escreva(" ## Valor do saque foi de ",saque," saldo restante : ",saldo[numUsuario]," ## \n")
					}
				}
					pare
				caso 3:
					escreva(" ## Informe o quanto quer depositar : \n")
					leia(deposito)
					se(deposito>=0){
						saldo[numUsuario]= saldo[numUsuario]+deposito
					}senao{
						escreva(" ## Não é possível realizar depósito neste valor ##\n")
					}
					escreva("## Saldo disponível : ",saldo[numUsuario]," ## \n")
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
 * @POSICAO-CURSOR = 1943; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */