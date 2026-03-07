programa
{
	
	funcao inicio()
	{
		real p, a, imc
		
		escreva("Qual é o seu peso? ")
		leia(p)
		escreva("E a sua altura? ")
		leia(a)
		
		imc = p/(a*a)

		se(imc<18.5) {
			escreva("\nVocê está abaixo do peso normal.")
		} senao se(imc<25) {
			escreva("\nVocê está com peso normal.")
		} senao se(imc<30) {
			escreva("\nVocê está com excesso de peso.")
		} senao se(imc<35) {
			escreva("\nVocê está com obesidade classe I.")
		} senao se(imc<40) {
			escreva("\nVocê está com obesidade classe II.")
		} senao {
			escreva("\nVocê está com obesidade classe III.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 140; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */