programa
{
	
	funcao inicio()
	{
		cadeia nome, disciplina
		real notas, nota 
		notas = 0
		
		escreva("Nome do aluno: ")
		leia(nome)
		escreva("Qual a disciplina? ")
		leia(disciplina)
		escreva("Nota 1: ")
		leia(nota)
		notas = notas+nota
		escreva("Nota 2: ")
		leia(nota)
		notas = notas+nota
		escreva("Nota 3: ")
		leia(nota)
		notas = notas+nota
		escreva("Nota 4: ")
		leia(nota)
		notas = notas+nota

		escreva("A média de " + nome + " em " + disciplina + " foi: " + (notas/4))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 166; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */