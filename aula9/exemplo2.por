programa
{
	
	funcao inicio()
	{
		inteiro numero
		escreva("Número: ")
		leia(numero)
		escreva("\nA soma total dos número anteriores a ",numero," é ",somarNumerosAnteriores(numero),".")
	}

	funcao inteiro somarNumerosAnteriores(inteiro numero){
		inteiro resultado

		se(numero <=1 ){
			retorne 1
		}senao{
			resultado = somarNumerosAnteriores(numero -1) + numero
			retorne resultado
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 186; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */