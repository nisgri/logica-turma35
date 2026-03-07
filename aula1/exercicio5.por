programa
{
	
	funcao inicio()
	{
		inteiro l, c, area, m2
		
		escreva("Qual a largura do terreno? ")
		leia(l)
		escreva("E o comprimento? ")
		leia(c)
		escreva("Qual o valor por m²? R$")
		leia(m2)
		
		area=l*c
		
		escreva("O terreno é avaliado em R$ " + (area*m2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 219; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */