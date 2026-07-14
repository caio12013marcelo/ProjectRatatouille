programa
{
	
	funcao inicio()
	{
		//(saque)-(resto do saque)-(opcoes)-(opc3)-(informaçoes do usuario)-(codigo digitado pelo usuario) 	 
		inteiro saque=0,restante=0,opc=0,deposito=0,numUsuario=0
		//notas 
		inteiro valor100=0,valor50=0,valor20=0,valor10=0,valor5=0,valor2=0

		//## Informações em relação ao usuário
		
		//vetores
		cadeia usuario[5]={"Rodney","Claudney","Edney","vanderley","Sidney"}//usuario ( o nome de cada usuario )
		cadeia senha[5]= {"101","102","103","104","105"}//senha ( codigo de segurança de cada usuario )
		inteiro login[5]={101,102,103,104,105} // login (informaçao do usuario)
		inteiro saldo[5]={7005,200,300,400,500} //saldo ( Saldos armazenados de cada usuario )
		
		//informaçoes entregues pelo usuario
		inteiro cod=0
		cadeia password
		
		logico invalid=verdadeiro//uma variavel usada no enquanto para fazer um loop
		
		enquanto(invalid){//faz com que entre em loop
			enquanto(invalid){//rodará até entrar no (para),onde o invalid se tornará falso e nao conseguirá mais fazer o loop 
				
				//informaçoes entregues pelo usuário
				escreva(" ## Informe o código de usuário :")//Pede que o usuário informe o seu codigo
				leia(cod)// armazena o código informado
				escreva(" ## Informe a senha :")// Pede que o usuário informe a senha
				leia(password)//Armazena a senha
				numUsuario=0//zerar o usuario lozalizado 
				opc=0//opçao é zerada para permitir a escolha de outra opção de dentro do menu
				limpa()//limpa todas as informações que estavam na tela anteriormente
			
				para(inteiro i=0;i<5;i++){//rodar todos o numeros dos vetores (login) e (senha) para sincroniza-los 
					se(cod==login[i] e senha[i]==password){// se o cod(login) informado e a senha(password) forem corretos, ele entra
						numUsuario = i//localizar o usuario
						invalid=falso//encerra o loop e faz com que não entre no "se(invalid==verdadeiro)"
					}
				}
				se(invalid==verdadeiro){//caso alguma das informações acima nao estiverem corretas
					escreva(" ## SENHA OU USUARIOS ERRADOS ## \n")//mensagem impressa na tela 
				}
			}
			enquanto(opc!=4){ //vai rodar ate o usuario digitar a opçao 4 (encerrar)
				escreva(" ## SEJA-BEM VINDO, ",usuario[numUsuario]," ##\n")//mensagem de boas vindas 
				invalid=verdadeiro//continuar o loop depois que o usuario digitar 4 (encerrar)
				escreva("======= CAIXA ELETRÔNICO =======\n1 - CONSULTAR SALDO\n2 - SAQUE\n3 - DEPÓSITO\n4 - SAIR\n===============================\nEscolha a opção desejada: ")
				//menu do caixa eletrônico
				leia(opc)//o usuario digita um numero
				limpa()//limpa
			escolha(opc){//opcoes (1,2,3 ou 4)
				caso 1://saldo
					//informa o nome do usuario localizado no vetor (usuario) e o seu saldo
					escreva(" ## Saldo de ( ",usuario[numUsuario]," ) , disponível de ",saldo[numUsuario]," ratatouille ##\n")
					pare
				caso 2://saque
					escreva(" ## Informe o valor do saque : ")//o usuario vai informar o valor que quer sacar
					leia(saque)//armazena valor informado
					se(saque<=0){//se o saque for menor que zero,nao será possivel
						escreva(" ## Não é possível realizar depósito neste valor ##\n")//mensagem impressa na tela 
					}senao{
					se(saque == 1){//se o saque for igual a 1,dará invalido pois nao temos moedas
						escreva(" ## Invalido, não pode sacar 1 de ratatouille## \n")//mensagem impressa na tela 
					}senao{
					se(saque>saldo[numUsuario]){//se o saque for maior que o saldo,dará invalido  
						escreva(" ## Você não possue dinheiro para sacar esse valor ## \n")//mensagem impressa na tela 
					}senao{
						se(saque>=7005){//saque for maior ou igual a 7005,valor de todas as notas somadas (limite)  
							saldo[numUsuario]= saldo[numUsuario]-7005
							escreva(" ## Limite de caixa é 7005 ## \n")//mensagem impressa na tela 
							saque=7005//saque efetuado com valor total de caixa
						}
						se(saque%10==3 ou saque%10==1){//se for divisivel por 3 ou 1 com resto zero
							escreva(" ## ALERTA : Saques terminados em 3 ou 1 terão desconto de -1 ratatouille  ## \n")
							saque=saque-1//retira -1 do saque que o usuario digitou,ja que nao temos moedas.
						}senao{
							saldo[numUsuario]= saldo[numUsuario]-saque//saca normalmente 
						}
						//sera usado para fazer os calculos de diminuiçao do "resto" para pegar todas as notas que serao entegues,nao estará afetando o saque 
						restante=saque
						//mostra o nome do usuario localizado no vetor (usuario) e as notas entregues 
						escreva(" ## Usuario : ",usuario[numUsuario]," ##\n=== NOTAS ENTREGUES ===\n")
						
						se(restante>=100){//maior ou igual a 100
								se(restante>=100 e restante<=4000){//se maior ou igual a 100 (e) menor ou igual a 4000 que é o limite de notas somadas
									valor100= restante/100//divide o resto por 100 (exemplo 600 : 100 = 6 notas)
								}senao{
									valor100=40//entrega o maximo de notas de 100, que seria 40 notas  
								}
							restante=restante-valor100*100//retira o valor das notas de 100 do restante
							escreva(" * 100 Ratatouilles: ",valor100,"\n")//quantidade de notas de 100 entregues
							}
						se(restante>=50){//maior ou igual a 50
								se(restante>=50 e restante<=2000){//se maior ou igual a 50 (e) menor ou igual a 2000 que é o limite de notas somadas
									valor50=restante/50//divide o resto por 50 (exemplo 250 : 50 = 5 notas)
								}senao{
									valor50=40//entrega o maximo de notas de 50
								}
							restante= restante-valor50*50//retira o valor das notas de 50 do restante
							escreva(" * 50 Ratatouilles: ",valor50,"\n")//quantidade de notas de 50 entregues
							}
						se(restante>=20){//maior ou igual a 20
								se(restante>=20 e restante<=600){//se maior ou igual a 20 (e) menor ou igual a 600 que é o limite de notas somadas
									valor20=restante/20//divide o resto por 10 (exemplo 80 : 20 = 4 notas)
								}senao{
									valor20=30//entrega o maximo de notas de 20 
								}
							restante= restante-valor20*20//retira o valor das notas de 20 do restante 
							escreva(" * 20 Ratatouilles: ",valor20,"\n")//quantidade de notas de 20 entregues 
							}
						se(restante>=10){//maior ou igual a 10
								se(restante>=10 e restante<=300){//se maior ou igual a 10 (e) menor ou igual a 300 que é o limite de notas somadas
									valor10=restante/10//divide o resto por 10 (exemplo 20 : 10 = 2 notas)
								}senao{
									valor10=30//entrega o maximo de notas de 10
								}
							restante= restante-valor10*10//retira o valor das notas de 10 do restante 
							escreva(" * 10 Ratatouilles: ",valor10,"\n")//quantidade de notas de 10 entregue
							}
						se(restante % 5 == 0 e restante>=5){//se for divisivel por 5 com resto zero (e) maior ou igual a 5
								se(restante>=5 e restante<=75){//se maior ou igual a 5 (e) menor ou igual a 75 que é o limite de notas somadas 
									valor5=restante/5//divide o resto por 2 (exemplo 15 : 5 = 3 notas)
								}senao{
									valor5=15//entrega o maximo de notas de 5
								}
							restante= restante-valor5*5//retira o valor das notas de 5 do restante 
							escreva(" * 5 Ratatouilles: ",valor5,"\n")//quantidade de notas de 5 entregue
							}
						se(restante % 2 == 0 e restante>=2 ou restante==3){//se for divisivel por 2 com resto zero (e) maior ou igual a 2 (ou) igual a 3  
							se(restante>=2 e restante <=30){//o resto for maior ou igual a 2 (e) menor ou igual a 30 que é o limite de notas somadas  
								valor2=restante/2//divide o resto por 2 (exemplo 10 : 2 = 5 notas)
							}senao{
								valor2=15//entrega o maximo de notas de 2
							}
						restante= restante-valor2*2//retira o valor das notas de 2 do restante 
						escreva(" * 2 Ratatouilles: ",valor2,"\n")//quantidade de notas de 2 entregues
						}
						se(restante==7 ou restante==9){//resto do saque for igual a 7 ou 9
							se(restante==7){//resto do saque igual a 7
								restante= restante-7//resto -7,nao sobra nada
								valor5=1//notas entregues
								valor2=1
							}senao se(restante==9){//resto do saque igual a 9
								restante= restante-9//resto -9,nao sobra nada
								valor5=1//notas entregues
								valor2=2
							}
							escreva(" * 5 Ratatouilles: ",valor5,"\n")//informa a quantia de notas entregues (o valor mudará se o resto for 7 ou 9)
							escreva(" * 2 Ratatouilles: ",valor2,"\n")
						}
					   }//será informado o valor que o usuario sacou e seu saldo após o saque
					  escreva(" ## Valor do saque foi de ",saque," saldo restante : ",saldo[numUsuario]," ## \n")
					}
				}
					pare
				caso 3://deposito
					escreva(" ## Informe o quanto quer depositar : \n")
					leia(deposito)//o usuario digita a quantia que quer depositar
					se(deposito>=0){//se o deposito for maior ou igual a 0,deposita no saldo o valor digitado pelo usuario 
						saldo[numUsuario]= saldo[numUsuario]+deposito
					}senao{//se nao for maior que zero,nao será possivel depositar
						escreva(" ## Não é possível realizar depósito neste valor ##\n")
					}//será informado o saldo do usuario após o deposito 
					escreva("## Saldo disponível : ",saldo[numUsuario]," ## \n")
					pare
				caso 4://sair
					limpa()//limpa todo o codigo menos a frase "ate a proxima"
					escreva(" ## Até a proxima ## \n")
					pare
				caso contrario://será invalido, quando o usuário digitar uma opção que nao consta no menu
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
 * @POSICAO-CURSOR = 3863; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */