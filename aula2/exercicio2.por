programa
{
	
	funcao inicio()
	{
		cadeia condicao, nome
		inteiro idade
		
		escreva("Qual o seu nome? ")
		leia(nome)
		escreva("Quantos anos você tem? ")
		leia(idade)
		escreva("Possui alguma condição especial? (gestante/deficiente) ")
		leia(condicao)
		
		se(condicao=="gestante" ou condicao=="gravida" ou idade>=65) {
			escreva("\nFila preferencial.")
		} senao {
			escreva("\nFila padrão.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 242; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */