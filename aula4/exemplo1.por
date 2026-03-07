programa
{
	
	funcao inicio()
	{
		inteiro idades[2], digito

		para(inteiro i=0; i<4; i++) {
			escreva("Quantos anos a pessoa ",i+1," tem? ")
			leia(digito)

			se(digito<18) {
				idades[0]++
			} senao {
				idades[1]++
			}
		}

		escreva("\n",idades[0]," pessoa(s) era(m) de menor e ",idades[1],", maior(es) de idade.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 304; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */