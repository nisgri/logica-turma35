programa
{
	
	funcao inicio()
	{
		inteiro quant, idade, dmenor=0, maior=0
		
		escreva("Com quantas pessoas gostaria de fazer o teste? ")
		leia(quant)
		
		para(inteiro i=0; i<quant; i++) {
			escreva("\nQual é a idade? ")
			leia(idade)
			se(idade >= 18) {
				escreva("É maior de idade.\n")
				maior++
			} senao {
				escreva("É de menor.\n")
				dmenor++
			}
		}

		escreva("\n", quant, " pessoa(s) testada(s) no total.")
		escreva("\n", dmenor, " era(m) de menor e ", maior, " maior(es) de idade.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 58; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */