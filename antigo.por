programa
{
	
	funcao inicio()
	{
		//	saque saquetbm   opcao  deposito  numero usuario codigo
	inteiro saque=0,restante=0,opc=0,deposito=0,numUsuario=0,  cod
		//nota100    nota50    nota20    nota10    nota5    nota2
	inteiro valor100=0,valor50=0,valor20=0,valor10=0,valor5=0,valor2=0
		//saldo:sao os valores que cada usuario tem (Rodney=7005,edney=300...)	
	inteiro saldo[5]={7005,200,300,400,500}
		//login:é uma forma de identificar o usuario (101=Rodney,103=edney...)
	inteiro login[5]={101,102,103,104,105}
		//senha:é o um codigo de seguranca que cada usuario tem para acessar sua conta (Rodney=101)
	cadeia senha[5]= {"101","102","103","104","105"}
		//usuario:é a pessoa que irá acessar sua propria conta
	cadeia usuario[5]={"Rodney","Claudney","Edney","vanderley","Sidney"},password

		
	logico invalid=verdadeiro//é a palavra usada no enquanto para repeti-lo infinitamente
	
	enquanto(invalid)//verdadeiro (faz com que o codigo se repita depois de ser encerrado,varias vezes)
	{
		//verdadeiro (repete essa parte em especifico quando o codigo e a senha nao baterem)
		// se baterem ele se tornara falso e pulara a parte escrita "se(invalid ==verdadeiro) e entrara no menu do caixa
		enquanto(invalid)
		{
			escreva("Informe o codigo de usuario :")//numero do usuario
			leia(cod)
			escreva("Informe a senha :")//codigo de acesso
			leia(password)//digite uma senha que entrará no password
			//precaucao
			numUsuario=0
			opc=0 
			//(=0)para que ele possa voltar para o inicio.
			//se nao,quando digitado o 4 (termina o codigo) nao daria continuidade,
			//pois o opc (opcao) ficaria programado para entrar na opcao 4 sempre.		
			limpa()//limpa	
			
			para(inteiro i=0;i<4;i++)//é igual o (enquanto) mas repete a quantidade de vezes que vc colocou
			{
				//o codigo informado igual a um dos numeros citados no vetor "login"
				//a senha informada igual a um dos numeros citados no vetor "senha"
				se(cod==login[i] e senha[i]==password)
				{
					numUsuario = i//para encontrar a sua localizacao nos dois vetores (senha e login)
					invalid=falso
				}
			}
					
				se(invalid==verdadeiro)//pulara o (para por que esta falso e entrara aqui (caso a senha e o login nao baterem)
				{
					escreva("## SENHA OU USUARIOS ERRADOS ##\n")//a senha ou o login nao bateram
				}
		 }
		 
	enquanto(opc!=4)//repetira ate o cara digitar a opcao 4 (encerra)
	{
		escreva(" ## SEJA-BEM VINDO, ",usuario[numUsuario]," ##\n")//inicio,ali aparece o nome do usuario
		invalid=verdadeiro //invalid retorna a ficar verdadeiro para que o codigo se repita (o comeco do codigo é "verdadeiro")
		escreva("======= CAIXA ELETRÔNICO =======\n1 - CONSULTAR SALDO\n2 - SAQUE\n3 - DEPÓSITO\n4 - SAIR\n===============================")
		escreva("\nEscolha a opção desejada: ")
		leia(opc)//opcao 1,2,3 ou 4
		
		limpa()//limpa		
		escolha(opc)//opcoes
		{
			//se o usuario digitar (1),aparecerá o saldo e  o nome do usuario
			caso 1:
				escreva(" ## Saldo ( ",usuario[numUsuario]," ) , disponível de ",saldo[numUsuario]," ratatouille ##\n")
			pare

			//se o usuario digitar (2),aparecerá a opcao de sacar
			caso 2:
				escreva("Informe o valor do saque : ")
				leia(saque)

				//nesses valores (1,3,7)nao podem por que nao temos moedas,so notas
				se(saque%10 == 1 ou saque%10 == 3 ou saque%10 == 7)//se ele digitar entre 1,3 ou 7
				{
					escreva("Invalido, não pode sacar terminando em 1 ou 3 ou 7\n")
				}
				senao//seguindo normalmente
				{
					//se o saque que ele deseja for maior que o dinheiro que tem,sera enviado uma mensagem
					se(saque>saldo[numUsuario])
					{
					escreva("Você não possue dinheiro para sacar esse valor\n")
					}
					senao
					{
						se(saque>=7005)//saque maior ou igual a 7005
						{
						//esta conta serve para retirar so 7005 do saque que o usuario pediu (que é o limite)
						saldo[numUsuario]= saldo[numUsuario]-7005 
						escreva("Limite de caixa é 7005\n")//limite do banco
							}
						senao
						{
						saldo[numUsuario]= saldo[numUsuario]-saque //retira o valor pedido na conta do usuario
						}
		restante=saque//serve para armazenar o valor do saque,o reste é so calculo
		escreva("## Usuario : ",usuario[numUsuario]," ##\n NOTAS ENTREGUES\n")//notas que o banco entregou para ele
		
		se(restante>=100)//saque igual ou maior que 100
		{
			se(restante>=100 e restante<=4000)//maior que 100 e menor que a quantidade do valor que é permitido (100*40 notas=4000)
			{
				valor100= restante/100//para ver quantas notas de 100 seram entregadas pelo banco
			}
			senao
			{
				valor100=40 //quantidade maxima de notas de 100
			}
			restante=restante-valor100*100 //quantidade de 100 que nem no saque
			escreva("100 Ratatouilles: ",valor100,"\n")//mostra a quantidade de notas entregues
		}
		se(restante>=50)//saque igual ou maior que 50
		{			
			se(restante>=50 e restante<=2000)//maior que 50 e menor que o permitido (50*40 notas=2000)
			{
				valor50=restante/50//para ver quantas notas de 50 seram entregadas pelo banco
			}
			senao
			{
				valor50=40//quantidade maxima de notas de 50
			}
			restante= restante-valor50*50
			escreva("50 Ratatouilles: ",valor50,"\n")//mostra a quantidade de notas entregues
		}
			
		se(restante>=20)//saque igual ou maior que 20.
		{
			se(restante>=20 e restante<=600)//maior que 20 e menor que o permitido (20*30 notas=600)
			{
				valor20=restante/20//para ver quantas notas de 20 seram entregadas pelo banco
			}
			senao
			{
				valor20=30//quantidade maxima de notas de 20
			}
			restante= restante-valor20*20
			escreva("20 Ratatouilles: ",valor20,"\n")//mostra a quantidade de notas entregues
		}
			
		se(restante>=10)//saque igual ou maior que 10.
		{
			se(restante>=10 e restante<=300)//maior que 10 e menor que o permitido (50*30 notas=300)
			{
				valor10=restante/10//para ver quantas notas de 10 seram entregadas pelo banco
			}
			senao
			{
				valor10=30//quantidade maxima de notas de 10
			}
			restante= restante-valor10*10
			escreva("10 Ratatouilles: ",valor10,"\n")//mostra a quantidade de notas entregues
		}
		
		se(restante % 5 == 0 e restante>=5)// (saque igual ou maior que 5.)
		{
			se(restante>=5 e restante<=75)//maior que 5 e menor que o permitido (5*15 notas=75)
			{
				valor5=restante/5//para ver quantas notas de 5 seram entregadas pelo banco
			}
			senao
			{
				valor5=15//quantidade maxima de notas de 15
			}
			restante= restante-valor5*5
			escreva("5 Ratatouilles: ",valor5,"\n")//mostra a quantidade de notas entregues
		}
		se(restante % 2 == 0 e restante>=2)//se o final do saque for divisivel por 2
		{
			se(restante>=2 e restante <=30)//maior que 2 e menor que o permitido (2*15 notas=30)
			{
				valor2=restante/2//para ver quantas notas de 2 seram entregadas pelo banco
			}senao
			{
				valor2=15//numero total
			}
			restante= restante-valor2*2
			escreva("2 Ratatouilles: ",valor2,"\n")//mostra a quantidade de notas entregues
		}
	   				}
	 		
	 		escreva("## saldo restante : ",saldo[numUsuario]," ## \n")//mostra o saldo que sobrou depois do saque
					
						}
			pare
			
			caso 3://se o usuario digitar (3),depositará um vlor que ele desejar
				escreva("Informe o quanto quer depositar : \n")
				leia(deposito)
				saldo[numUsuario]= saldo[numUsuario]+deposito//a quantisa que vc quer sendo colocada no seu saldo
				escreva("## Saldo disponível : ",saldo[numUsuario]," ## \n")
			pare
			
			caso 4://se o usuario digitar (4),esta pedindo paara sair
				limpa()
				escreva("Até a proxima\n")
			pare
			
			caso contrario://qual quer numero antes ou depois desses(1,2,3, e 4) será invalidado
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
 * @POSICAO-CURSOR = 4350; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */