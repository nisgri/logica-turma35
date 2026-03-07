programa
{
	
	funcao inicio()
	{
		inteiro digito, maior=0, menor=999

		para(inteiro i=0; i<4; i++) {
			escreva("Quantos anos a pessoa ",i+1," tem? ")
			leia(digito)

			se(digito<menor) {
				menor=digito
			} senao se(digito>maior){
				maior=digito
			}
		}

		escreva("\nA maior idade foi ",maior," e a menor, ",menor,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 208; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */