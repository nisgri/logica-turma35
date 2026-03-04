programa
{
	
	funcao inicio()
	{
		cadeia nome, categoria
		inteiro idade
		
		escreva("Qual o nome do jogador? ")
		leia(nome)
		escreva("E qual a sua idade? ")
		leia(idade)
		
		se(idade<10) {
			categoria="Escolinha"
		} senao se(idade<18) {
			categoria="Base"
		} senao se(idade<40) {
			categoria="Profissional" 
		} senao {
			categoria="Master"
		}

		escreva("\nJogador: " + nome)
		escreva("\nIdade: " + idade)
		escreva("\nCategoria: " + categoria)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 285; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */