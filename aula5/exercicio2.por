programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro n

		escreva(" Digite um número qualquer: ")
		leia(n)
		tabuada(n)
	}

	funcao tabuada(inteiro numero)
	{
		limpa()
		escreva(" Tabuada de ",numero,"\n")
		para(inteiro i=1;i<=10;i++)
		{
			escreva(numero," x ",i," = ",numero*i,"\n")
			u.aguarde(500)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 34; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */