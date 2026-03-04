programa
{
	inclua biblioteca Matematica--> m
	funcao inicio()
	{
		real gas, pag
		
		escreva("Quanto está a gasolina? R$")
		leia(gas)
		escreva("Quanto deseja pagar? R$")
		leia(pag)

		escreva("Você pagou por " + m.arredondar((pag/gas),1) + "l de gasolina.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 247; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */