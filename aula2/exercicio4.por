programa
{
	
	funcao inicio()
	{
		inteiro pao, broa
		real receita
		
		escreva("Quantos pães foram vendidos? ")
		leia(pao)
		escreva("E broas? ")
		leia(broa)

		receita=(pao*0.5)+(broa*5)
		
		escreva("\nR$" + receita + " foi o faturamento total de hoje.")
		escreva("\nR$" + receita*0.1 + " deve ser guardado na poupança.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 255; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */