programa
{
	
	funcao inicio()
	{
		caracter opcao
		real n1, n2
		
		escreva("Digite o primeiro valor: ")
		leia(n1)
		escreva("Qual operação abaixo deseja realizar?")
		escreva("\n[+ : Soma] | [- : Subtração] | [* : Multiplicação] ou [/ : Divisão] ")
		leia(opcao)
		escreva("Agora digite o segundo valor: ")
		leia(n2)
		
		escolha(opcao){

			caso '+': escreva("\nA soma é " + (n1+n2))
			pare
			caso '-': escreva("\nA subtração é " + (n1-n2))
			pare
			caso '*': escreva("\nA multiplicação é " + (n1*n2))
			pare
			caso '/': escreva("\nA divisão é " + (n1/n2))
			pare
			caso contrario: escreva("Operador inválido.")
			pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 148; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */