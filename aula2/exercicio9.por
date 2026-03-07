programa
{
	
	funcao inicio()
	{
		inteiro x, y
		
		escreva("Digite um valor: ")
		leia(x)
		escreva("Mais um: ")
		leia(y)

		se(x%y==0 ou y%x==0) {
			escreva("\nSão múltiplos um do outro.")
		} senao {
			escreva("\nNão são múltiplos mútuos.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 253; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */