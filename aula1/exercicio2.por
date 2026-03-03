programa
{
	
	funcao inicio()
	{
		inteiro horas, hora_extra, salario
		horas=0
		hora_extra=0
		salario=0
		
		escreva("Quantas horas você trabalhou neste ano? ")
		leia(horas)
		escreva("E quantas horas extras você trabalhou? ")
		leia(hora_extra)

		escreva("Você faturou R$ " + ((horas*10)+(hora_extra*15)) + " este ano.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 325; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */