programa
{
	
	funcao inicio()
	{
		inteiro idade
		
		escreva("Qual é a sua idade? ")
		leia(idade)
		
		se(idade<16) {
			escreva("\nVocê não pode votar ainda.")
		} senao se(idade<18 ou idade>70) {
			escreva("\nSeu voto é opcional.")
		} senao {
			escreva("\nSeu voto é obrigatório.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 294; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */