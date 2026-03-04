programa
{
	inclua biblioteca Matematica--> m
	funcao inicio()
	{
		real celsius, fahrenheit
		celsius=0
		fahrenheit=0
		
		escreva("Qual a temperatura em °C? ")
		leia(celsius)
		fahrenheit=((celsius*1.8)+32)
		
		escreva("A temperatura informada em °F é " + m.arredondar(fahrenheit,2) + ".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 287; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */