programa
{
	
	funcao inicio()
	{
		real n1, n2, media
		inteiro faltas
		
		escreva("Qual a primeira nota? ")
		leia(n1)
		escreva("E a segunda? ")
		leia(n2)
		escreva("Qual a quantidade de faltas? ")
		leia(faltas)

		media = (n1+n2)/2

		se(faltas < 10) {
			se(media >= 9) {
				escreva("Aluno aprovado com sucesso.")
			} senao se(media >= 7) {
				escreva("Aluno aprovado.")
			} senao se(media >= 5) {
				escreva("Aluno em recuperação.")
			} senao {
				escreva("Aluno reprovado por notas.")
			}
		} senao {
			escreva("Aluno reprovado por faltas.") 
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 556; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */