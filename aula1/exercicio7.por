programa
{
	
	funcao inicio()
	{
		inteiro tempo, seg, min, hr
		
		escreva("Qual é o tempo em segundos? ")
		leia(tempo)
		
		hr=tempo/3600
		min=(tempo%3600)/60
		seg=(tempo%3600)%60

		escreva("Hora(s): "+hr+", Minuto(s): "+min+", Segundo(s): "+seg)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */