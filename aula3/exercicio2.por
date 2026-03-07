programa
{
	inclua biblioteca Matematica-->m
	
	funcao inicio()
	{
		inteiro opcao
		real conta=0.0

		faca {
			escreva("1- Hambúrguer................. R$ 3,00\n")
			escreva("2- Cheeseburger............... R$ 2,50\n")
			escreva("3- Fritas..................... R$ 2,50\n")
			escreva("4- Refrigerante............... R$ 1,00\n")
			escreva("5- Milkshake.................. R$ 3,00\n")
			escreva("0 - Sair\n")
			escreva("\nEscolha uma opção: ")
			leia(opcao)

			escolha(opcao) {
				caso 0:
					escreva("Pedido finalizado com sucesso.\n")
					pare
				caso 1:
					escreva("Hambúrguer adicionado ao carrinho.\n")
					conta = conta + 3
					pare
				caso 2:
					escreva("Cheeseburguer adicionado ao carrinho.\n")
					conta = conta + 2.5
					pare
				caso 3:
					escreva("Fritas adicionadas ao carrinho.\n")
					conta = conta + 2.5
					pare
				caso 4:
					escreva("Refrigerante adicionado ao carrinho.\n")
					conta = conta + 1
					pare
				caso 5:
					escreva("Milkshake adicionado ao carrinho.\n")
					conta = conta + 3
					pare
				caso contrario:
					escreva("Opção inválida.\n")
					pare
			}

			escreva("\n")
		} enquanto(opcao != 0)

		escreva("\nO valor total da conta foi de R$", m.arredondar(conta,2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1236; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */