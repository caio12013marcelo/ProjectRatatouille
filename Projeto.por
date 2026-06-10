programa
{
	
	funcao inicio()
	{
		inteiro saque=0,restante=0,opc=0,saldo=100,deposito=0,valor100=0
		enquanto(opc!=4){
			escreva("======= Caixa Eletrônico =======\n1 - Consultar Saldo\n2 - Realizar Saque\n3 - Realizar Depósito\n4 - Sair\n===============================\nEscolha a opção desejada: ")
			leia(opc)
			escolha(opc){
				caso 1:
					escreva("o seu saldo é ",saldo," ratatouille\n")
					pare
				caso 2:
					escreva("informe o valor do saque : ")
					leia(saque)
					se(saque>saldo){
						escreva("Ínvalido")
					}senao{
						saldo= saldo-saque
						para(inteiro i=0;i<40;i++){
							valor100=saque/100
							restante=saque
							restante= restante-valor100*100
						}
						escreva("Saldo restante ",saldo," valor sakado ",valor100,"\n")
					}
					
					pare
				caso 3:
					escreva("Informe o quanto quer depositar : \n")
					leia(deposito)
					saldo= saldo+deposito
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
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 984; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */