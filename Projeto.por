programa
{
	
	funcao inicio()
	{
		inteiro saque=0,restante=0,opc=0,saldo=100,deposito=0,valor100=0,valor50=0,valor20=0,valor10=0,valor5=0,valor2=0
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
						restante=saque
						se(restante>=100){
							para(inteiro i=0;i<40;i++){
								se(restante>=100){
									valor100=restante/100
									restante= restante-valor100*100
								}
							}
						}
						se(restante>=50){
							para(inteiro i=0;i<40;i++){
								se(restante>=50){
									valor50=restante/50
									restante= restante-valor50*50
								}
							}
						}
						se(restante>=20){
							para(inteiro i=0;i<30;i++){
								se(restante>=20){
									valor20=restante/20
									restante= restante-valor20*20
								}
							}
						}
						se(restante>=10){
							para(inteiro i=0;i<30;i++){
								se(restante>=10){
									valor10=restante/20
									restante= restante-valor10*10
								}
							}
						}
						se(restante>=2){
							para(inteiro i=0;i<15;i++){
								se(restante>=2){
									valor2=restante/2
									restante= restante-valor2*2
								}
							}
						}
						se(restante>=5){
							para(inteiro i=0;i<15;i++){
								se(restante>=5){
									valor5=restante/5
									restante= restante-valor5*5
								}
							}
						}
						escreva("100 din : ",valor100,"\n50 din :",valor50,"\n20 din : ",valor20,"\n10 din : ",valor10,"\n5 din : ",valor5,"\n2 din : ",valor2,"\n")
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
 * @POSICAO-CURSOR = 1199; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {saque, 6, 10, 5}-{restante, 6, 18, 8}-{opc, 6, 29, 3}-{saldo, 6, 35, 5}-{deposito, 6, 45, 8}-{valor100, 6, 56, 8}-{valor50, 6, 67, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */